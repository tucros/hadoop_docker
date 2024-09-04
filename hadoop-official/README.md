Run `docker compose up -d` to start the Hadoop cluster.

In the command below, `hadoop2-namenode-1` is the name of the running namenode container. Use `docker container ls` to find the name for your machine.

`docker exec -it hadoop2-namenode-1 /bin/bash`

Once you run the above command, you'll have a shell on the namenode. Then, run the below command to test that hadoop is working
`yarn jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar pi 10 15`

Run `docker compose down` to stop the cluster.
