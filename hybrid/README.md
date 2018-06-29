# OverOps Hybrid Example
This is an example OverOps Hybrid deployment architecture.  This example includes an Agent, a Remote Collector and the Hybrid Storage Server.

## Getting Started
To begin, you must first create a `.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `.env` file.  Be sure to update the values for `SECRET_KEY` and `VOLUME_SOURCE`.  Your Secret Key must correspond to a Service ID that has Hybrid Storage enabled (this must be preformed by OverOps).

```properties
# Sample .env file - You must update these values
SECRET_KEY=your-very-own-overops-secret-key
VOLUME_SOURCE=/path/to/hybrid-storage/on/host
```

When configuring the OverOps Storage Server via the UI, "Storage server address" should be `http://storage:8080`.  This is the address the Collector needs.  The "Web app-facing address" should be `http://localhost:8080`.  This is the address the UI needs.

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
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy -c docker-compose.yml hybrid-stack
```

### Stop and Destroy the Containers
```bash
docker stack rm hybrid-stack
```

## Docker Images
* Hybrid Storage Server - [timveil/oo-docker-hybrid-storage](https://hub.docker.com/r/timveil/oo-docker-hybrid-storage/)
* Remote Collector - [timveil/oo-docker-remote-collector](https://hub.docker.com/r/timveil/oo-docker-remote-collector/)
* Agent - [timveil/oo-docker-agent](https://hub.docker.com/r/timveil/oo-docker-agent/)