# OverOps Hybrid Example
This is an example OverOps Hybrid deployment architecture.  This example includes an Agent, a Remote Collector and the Hybrid Storage Server.

To begin, you must first update the values for `SECRET_KEY` and `VOLUME_SOURCE` in the `.env` file.  Your Secret Key must correspond to a Service ID that has Hybrid Storage enabled.  This configuration must be preformed by OverOps.

When configuring the OverOps Storage Server via the UI, "Storage server address" should be `http://storage:8080`.  This is the address the Collector needs.  The "Web app-facing address" should be `http://localhost:8080`.  This is the address the UI needs.

If you are using the latest edge channel of Docker, you can deploy directly to Kubernetes using Docker Compose.

## Docker Compose

## Start the Containers
```
docker-compose up
```

## Stop and Destroy the Containers
```
docker-compose down
```

## Kubernetes or Swarm

## Start the Containers
**As of today `docker stack deploy` does not process values stored on `.env` files.  The following works around that challenge:**
```
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy -c docker-compose.yml hybrid-stack
```

## Stop and Destroy the Containers
```
docker stack rm hybrid-stack
```