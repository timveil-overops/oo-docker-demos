# OverOps Load-balanced Remote Collector Example using Nginx
This is a simple example of an OverOps SaaS deployment using a Remote Collector and load balancing those collectors using Nginx.  The `docker-compose.yml` contains the following services:
* `collector-1` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `collector-2` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `load-balancer` - an instance of Nginx
* `agent` - an OverOps Agent and sample event generator app

## Getting Started
To begin, you must first create a `overops-key.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `overops-key.env` file.  Be sure to update the value for `TAKIPI_SECRET_KEY`.

### overops-key.env
```properties
TAKIPI_SECRET_KEY=your-very-own-overops-secret-key
```

### overops-agent.env
```properties
TAKIPI_COLLECTOR_HOST=load-balancer
TAKIPI_COLLECTOR_PORT=6060
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
* Agent - [timveil/oo-docker-agent](https://hub.docker.com/r/timveil/oo-docker-agent/)
* Nginx - [nginx](https://hub.docker.com/_/nginx/)