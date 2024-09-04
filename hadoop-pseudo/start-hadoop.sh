#!/bin/bash

service ssh start
NAMENODE_DIR="$HADOOP_HOME/data/namenode"
if [ ! -d "$NAMENODE_DIR" ]; then
    echo "Formatting namenode..."
    $HADOOP_HOME/bin/hdfs namenode -format
fi


$HADOOP_HOME/sbin/start-dfs.sh 
$HADOOP_HOME/sbin/start-yarn.sh
tail -f /dev/null
