kafka集群部署


常用命令：
      创建主题：
        ./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1   
      --partitions 1 --topic Hello-Kafka

      查看主题：
        ./kafka-topics.sh --list --zookeeper localhost:2181



      生产者客户端：
        ./kafka-console-producer.sh --broker-list localhost:9092 --topic test


      消费者客户端
        ./kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning
