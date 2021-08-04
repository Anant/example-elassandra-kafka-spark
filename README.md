# Example Elassandra-Kafka-Spark

## 1. Run Docker Containers
Make sure you are in the root folder of the repository. Run the following command: 
```bash
docker-compose up
```
After a minute or two, run the following command to make sure that both containers are up (both elasticsearch and dse server): 
```bash
docker ps -a
```

## 2. Install the dependencies
```bash
npm install
```

## 3. Create the topic
```bash
docker exec -it kafka /opt/bitnami/kafka/bin/kafka-topics.sh \
    --create \
    --zookeeper zookeeper:2181 \
    --replication-factor 1 \
    --partitions 1 \
    --topic nametest
```
## 3. Run the Consumer and Producer
```bash
npm run start:consumer
```
```bash
npm run start:producer
```
## 3. Check the cassandra for new files
```bash
docker exec -it project_elassandra_1 cqlsh
```