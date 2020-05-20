#!/bin/bash

set -e

# Generate the config only if it doesn't exist
if [[ ! -f "$CONF_DIR/server.properties" ]]; then
    IDX="$(echo $HOSTNAME| rev | cut -d "-" -f1 | rev)"
    SVR_INDEX=$((IDX+1))

    CONFIG="$CONF_DIR/server.properties"
    {
        echo "broker.id=$SVR_INDEX" 
        echo "listeners=PLAINTEXT://0.0.0.0:9092"
        echo "advertised.listeners=PLAINTEXT://$HOSTNAME.kafka:9092"
        echo "num.network.threads=3"
        echo "num.io.threads=8"
        echo "socket.send.buffer.bytes=102400"
        echo "socket.receive.buffer.bytes=102400"
        echo "socket.request.max.bytes=104857600"
        echo "log.dirs=$LOG_DIRS"
        echo "num.partitions=2"
        echo "num.recovery.threads.per.data.dir=1"
        echo "offsets.topic.replication.factor=1"
        echo "transaction.state.log.replication.factor=1"
        echo "transaction.state.log.min.isr=1"
        echo "log.retention.hours=168"
        echo "log.segment.bytes=1073741824"
        echo "log.retention.check.interval.ms=300000"
        echo "zookeeper.connect=$ZOOKEEPER"
        echo "zookeeper.connection.timeout.ms=6000"
        echo "group.initial.rebalance.delay.ms=0"

    } >> "$CONFIG"
   

fi

exec "$@"

/app/kafka/bin/kafka-server-start.sh $CONF_DIR/server.properties
