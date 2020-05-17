docker rmi -f fernandokarnagi/kafka-server:v1
docker build -t fernandokarnagi/kafka-server:v1 .
docker push fernandokarnagi/kafka-server:v1