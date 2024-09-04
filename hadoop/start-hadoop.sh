#!/bin/bash


# If this is the namenode
if [ "$HADOOP_ROLE" = "namenode" ]; then
    NAMENODE_DIR="$HADOOP_HOME/data/namenode"
    if [ ! -d "$NAMENODE_DIR" ]; then
        echo "Formatting namenode..."
        $HADOOP_HOME/bin/hdfs namenode -format
    fi

   $HADOOP_HOME/bin/hdfs namenode 

# elif for resourcemanager
elif [ "$HADOOP_ROLE" = "resourcemanager" ]; then
    $HADOOP_HOME/bin/yarn resourcemanager

# If this is a datanode
elif [ "$HADOOP_ROLE" = "datanode" ]; then
    $HADOOP_HOME/bin/hdfs  datanode &
    $HADOOP_HOME/bin/yarn  nodemanager

elif [ "$HADOOP_ROLE" = "misc" ]; then
    $HADOOP_HOME/bin/mapred historyserver &
    $HADOOP_HOME/bin/yarn  proxyserver
fi

#yarn jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.4.0.jar pi 10 15
