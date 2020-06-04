docker rmi -f fernandokarnagi/kafka-server:v9
docker build -t fernandokarnagi/kafka-server:v9 .
docker push fernandokarnagi/kafka-server:v9