FROM openjdk:8-jdk

ENV HADOOP_HOME=/usr/local/hadoop
ENV HADOOP_VERSION=3.4.0
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

RUN apt-get update && apt-get install -y sudo wget less vim

COPY hadoop-3.4.0.tar.gz .
RUN tar -xzvf hadoop-$HADOOP_VERSION.tar.gz && \
    mv hadoop-$HADOOP_VERSION $HADOOP_HOME && \
    rm hadoop-$HADOOP_VERSION.tar.gz

COPY core-site.xml $HADOOP_HOME/etc/hadoop/
COPY hdfs-site.xml $HADOOP_HOME/etc/hadoop/
COPY mapred-site.xml $HADOOP_HOME/etc/hadoop/
COPY yarn-site.xml $HADOOP_HOME/etc/hadoop/

COPY start-hadoop.sh /start-hadoop.sh
RUN chmod +x /start-hadoop.sh

ENTRYPOINT ["/start-hadoop.sh"]
