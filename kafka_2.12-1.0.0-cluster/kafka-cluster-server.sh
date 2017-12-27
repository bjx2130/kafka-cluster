#!/bin/bash


# zookeeper 集群的根目录
KAFKA_CLUSTER__HOME=./


# 以下是3个集群节点的配置
conf0=${KAFKA_CLUSTER__HOME}/config/server-0.properties
conf1=${KAFKA_CLUSTER__HOME}/config/server-1.properties
conf2=${KAFKA_CLUSTER__HOME}/config/server-2.properties


if [ $1 = start ]; then
	echo "启动集群 kafka-cluster ------------ "
	nohup ${KAFKA_CLUSTER__HOME}/kafka_2.12-1.0.0/bin/kafka-server-start.sh -daemon ${conf0}
	nohup ${KAFKA_CLUSTER__HOME}/kafka_2.12-1.0.0/bin/kafka-server-start.sh -daemon ${conf1}
	nohup ${KAFKA_CLUSTER__HOME}/kafka_2.12-1.0.0/bin/kafka-server-start.sh -daemon ${conf2}

elif [ $1 = stop ]; then
	echo "关闭集群 kafka-cluster ------------ "
	nohup ${KAFKA_CLUSTER__HOME}/kafka_2.12-1.0.0/bin/kafka-server-stop.sh -daemon ${conf0}
	nohup ${KAFKA_CLUSTER__HOME}/kafka_2.12-1.0.0/bin/kafka-server-stop.sh -daemon ${conf1}
	nohup ${KAFKA_CLUSTER__HOME}/kafka_2.12-1.0.0/bin/kafka-server-stop.sh -daemon ${conf2}
else
	echo ">>>>>>>>>>  command is not [start|stop|status]  <<<<<<<<<<< "
fi	

echo ">>>>>>>>>> [start|stop|status] 日志在当前目录 nohup.out 文件  "

