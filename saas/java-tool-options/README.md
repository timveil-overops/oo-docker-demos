# Instructions
This demo includes a docker image for the remote collector and one Java agent.  Instead of specifying the `agentlib` inside the container during as a JVM startup flag, it uses the `JAVA_TOOL_OPTIONS` environment variable to auto attach to any launched JVM. To begin, you must first update the value for `SECRET_KEY` in `.env` then run the following commands.

Build the images

```
docker-compose build --no-cache
```

Start the images
```
docker-compose up
```

Stop and destroy the images
```
docker-compose down
```