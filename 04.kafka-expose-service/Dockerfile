#
# Kafka Cli
#
FROM ubuntu
LABEL version="1.0"
LABEL description="Kafka Cli"
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

ENV PATH ${PATH}:/app/kafka/bin

ENTRYPOINT [ "/app/docker-entrypoint.sh" ]