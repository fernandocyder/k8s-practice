#
# Kafka Server
#
FROM ubuntu
LABEL version="1.0"
LABEL description="Kafka Server"
LABEL author_name="Fernando Karnagi"
LABEL author_email="fernando@cyder.com.sg"

RUN apt-get update

# To solve add-apt-repository : command not found
RUN apt-get -y install software-properties-common

# Install Java
RUN apt -y install openjdk-8-jdk

# Install Utility
RUN apt-get -y install telnet

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN mkdir /app
WORKDIR /app

COPY kafka_2.12-2.5.0.tgz kafka.tgz
COPY docker-entrypoint.sh docker-entrypoint.sh

RUN tar -xzf kafka.tgz

RUN mv kafka_2.12-2.5.0 kafka

# COPY server.properties /app/kafka/config/server.properties

EXPOSE 9092

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]

# CMD ["/app/kafka/bin/kafka-server-start.sh", "/app/kafka/config/server.properties"]