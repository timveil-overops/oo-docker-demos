# Instructions
This demo includes a docker image for the remote collector and Apache Cassandra.  Instead of specifying the `agentlib` inside the container during as a JVM startup flag, it uses the `JAVA_TOOL_OPTIONS` environment variable to auto attach to any launched JVM.

To begin, you must first update the value for `SECRET_KEY` in `.env` then run the following commands.  In addition you will need to modify the following line in the `docker-compose.xml`.

```
volumes:
  - /Users/timveil/dev/takipi/t4c-agent:/opt/takipi
```

Here `/Users/timveil/dev/takipi/t4c-agent` is the path on my local machine where I have unzipped the OverOps for Containers agent (T4C).  You need to update download, unzip and correct this path for your machine.


Start the images
```
docker-compose up
```

Stop and destroy the images
```
docker-compose down
```