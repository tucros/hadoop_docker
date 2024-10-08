#!/bin/bash -x

apt-get update && apt-get install -y sudo openssh-server openssh-client less vim

ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys

ln -s /usr/local/openjdk-8/bin/java /bin/java
