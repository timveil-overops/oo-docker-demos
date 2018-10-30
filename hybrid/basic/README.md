# OverOps Hybrid Example
This is a simple example of an OverOps "Hybrid" deployment.  The `docker-compose.yml` contains the following services:
* `storage` - the OverOps Hybrid Storage server
* `collector` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `agent` - an OverOps Agent and sample event generator app

## Getting Started
To begin, you must first create a `overops-key.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `overops-key.env` file.  Be sure to update the value for `TAKIPI_SECRET_KEY`.  Your Secret Key must correspond to a Service ID that has Hybrid Storage enabled (this must be preformed by OverOps).

```properties
# Sample overops-key.env file - You must update these values
TAKIPI_SECRET_KEY=your-very-own-overops-secret-key
```

When configuring the OverOps Storage Server via the UI, "Storage server address" should be `http://storage:8080`.  This is the address the Collector needs.  The "Web app-facing address" should be `http://localhost:8080`.  This is the address the UI needs.

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
* Hybrid Storage Server - [timveil/oo-docker-hybrid-storage](https://hub.docker.com/r/timveil/oo-docker-hybrid-storage/)
* Remote Collector - [timveil/oo-docker-remote-collector](https://hub.docker.com/r/timveil/oo-docker-remote-collector/)
* Agent - [timveil/oo-docker-agent](https://hub.docker.com/r/timveil/oo-docker-agent/)