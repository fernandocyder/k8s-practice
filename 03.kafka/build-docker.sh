docker rmi -f fernandokarnagi/kafka-server:v10
docker build -t fernandokarnagi/kafka-server:v10 .
docker push fernandokarnagi/kafka-server:v10