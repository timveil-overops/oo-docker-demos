# OverOps Remote Collector Example - Alpine (musl)
This is a simple example of an OverOps SaaS deployment using a Remote Collector.  The `docker-compose.yml` contains the following services:
* `collector` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `agent` - an OverOps Agent and sample event generator app

## Getting Started
To begin, you must first create a `overops-key.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `overops-key.env` file.  Be sure to update the value for `TAKIPI_SECRET_KEY`.

```properties
# Sample overops-key.env file - You must update these values
TAKIPI_SECRET_KEY=your-very-own-overops-secret-key
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

## Kubernetes or Swarm (Experimental)

### Start the Containers
*As of today `docker stack deploy` does not process values stored in `.env` files.  The following works around that challenge:*
```bash
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy -c docker-compose.yml remote-collector-stack
```

### Stop and Destroy the Containers
```bash
docker stack rm remote-collector-stack
```

## Docker Images
* Remote Collector - [timveil/oo-docker-remote-collector](https://hub.docker.com/r/timveil/oo-docker-remote-collector/)
* Agent - [timveil/oo-docker-agent](https://hub.docker.com/r/timveil/oo-docker-agent/)