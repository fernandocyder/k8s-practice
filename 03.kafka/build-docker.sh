docker rmi -f fernandokarnagi/kafka-server:v11
docker build -t fernandokarnagi/kafka-server:v11 .
docker push fernandokarnagi/kafka-server:v11