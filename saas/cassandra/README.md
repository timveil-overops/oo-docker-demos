# OverOps Cassandra Example
This is a simple example of using OverOps to monitor an external Docker image, in this case [Cassandra](https://hub.docker.com/_/cassandra/).  Instead of specifying the `agentlib` inside the container during as a JVM startup flag, this example uses the `JAVA_TOOL_OPTIONS` environment variable to auto attach to any JVM launched inside the container.  The `docker-compose.yml` contains the following services:
* `collector` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `sidecar` - an OverOps Agent running in a dedicated container whose directory is exposed as a Docker `volume` mount
* `cassandra` - an instance of Cassandra monitored by an OverOps Agent mounted in the `sidecar`

## Getting Started
To begin, you must first create a file called `overops-key.env` and place it in the same directory as the `Dockerfile`.  Below is a sample `overops-key.env` file.

```properties
TAKIPI_SECRET_KEY=your-very-own-overops-secret-key
```

## Docker Compose

### Start the Containers
```bash
docker-compose up
```

### Stop and Destroy the Containers
```bash
docker-compose down
```

## Docker Images
* Remote Collector - [timveil/oo-docker-remote-collector](https://hub.docker.com/r/timveil/oo-docker-remote-collector/)
* Agent Sidecar - [timveil/oo-docker-agent-sidecar](https://hub.docker.com/r/timveil/oo-docker-agent-sidecar/)
* Cassandra - [cassandra](https://hub.docker.com/_/cassandra/)