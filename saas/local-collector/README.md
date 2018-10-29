# OverOps Local Collector Example
This is a simple example of an OverOps SaaS deployment using a Local Collector.  The `docker-compose.yml` contains the following services:
* `local-collector` - an OverOps Agent and Collector running in the same container container (aka Local Collector)

> Running the `collector` and the `agent` on the same container or instance is not recommended outside of evaluation or other very specific circumstances.  It almost always makes more sense to use the `remote collector` configuration.

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
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy -c docker-compose.yml local-collector-stack
```

### Stop and Destroy the Containers
```bash
docker stack rm local-collector-stack
```

## Docker Images
* Local Collector - [timveil/oo-docker-local-collector](https://hub.docker.com/r/timveil/oo-docker-local-collector/)