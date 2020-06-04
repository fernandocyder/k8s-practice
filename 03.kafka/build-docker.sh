docker rmi -f fernandokarnagi/kafka-server:v8
docker build -t fernandokarnagi/kafka-server:v8 .
docker push fernandokarnagi/kafka-server:v8