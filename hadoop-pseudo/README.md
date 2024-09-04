Download Hadoop from [here](https://archive.apache.org/dist/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz) and move it into this folder.

Build the Docker image using `docker compose build` in this folder.

Run `docker compose up -d` to start Hadoop.

Use `docker container ls` to find the name for the container. It will look like `hadoop-psuedo-hadoop-*`.

Open a bash shell in that container using `docker exec -it <container_name> /bin/bash`

Run the below command to test that hadoop is working
`yarn jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.4.0.jar pi 10 15`

Run `docker compose down` to stop Hadoop.
