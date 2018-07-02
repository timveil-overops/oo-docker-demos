# OverOps Cassandra Example
This is a simple example of using OverOps to monitor an external Docker image, in this case [Cassandra](https://hub.docker.com/_/cassandra/).  Instead of specifying the `agentlib` inside the container during as a JVM startup flag, this example uses the `JAVA_TOOL_OPTIONS` environment variable to auto attach to any JVM launched inside the container.  The `docker-compose.yml` contains the following services:
* `collector` - an OverOps collector running in a dedicated container (aka Remote Collector)
* `cassandra` - an instance of Cassandra monitored by an OverOps agent mounted on the Docker host

## Getting Started
To begin, you must first create a `.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `.env` file.  Be sure to update the values for `SECRET_KEY` and `VOLUME_SOURCE`.  `VOLUME_SOURCE` is the path on the host machine where the  OverOps for Containers agent (T4C) is installed.

```properties
# Sample .env file - You must update these values
SECRET_KEY=your-very-own-overops-secret-key
VOLUME_SOURCE=/path/on/host/to/oo-agent/
```

If you are using the latest edge channel of Docker, you can deploy directly to Kubernetes using Docker Compose.

## Docker Compose

### Start the Containers
```bash
docker-compose up
```

### Stop and Destroy the Containers
```bash
docker-compose down
```

## Kubernetes or Swarm

### Start the Containers
*As of today `docker stack deploy` does not process values stored in `.env` files.  The following works around that challenge:*
```bash
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy -c docker-compose.yml cassandra-stack
```

### Stop and Destroy the Containers
```bash
docker stack rm cassandra-stack
```

## Docker Images
* Remote Collector - [timveil/oo-docker-remote-collector](https://hub.docker.com/r/timveil/oo-docker-remote-collector/)
* Cassandra - [cassandra](https://hub.docker.com/_/cassandra/)