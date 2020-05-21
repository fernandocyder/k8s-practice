docker rmi -f fernandokarnagi/kafka-server:v7
docker build -t fernandokarnagi/kafka-server:v7 .
docker push fernandokarnagi/kafka-server:v7