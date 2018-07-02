# OverOps OnPrem Example
This is a simple example of an OverOps "OnPrem" deployment.  The `docker-compose.yml` contains the following services:
* `analysis-server` - the OverOps backend server, supporting OverOps UI, etc
* `collector` - an OverOps collector running in a dedicated container (aka Remote Collector)
* `agent` - an OverOps agent and sample event generator app

## Getting Started
To begin, you must first create a `.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `.env` file.  The sample `SECRET_KEY` included below is a valid, limited trial key.

```properties
# Sample .env file
SECRET_KEY=S1#qrXOZTWZsAzN2X0x#02G06kYSRWvet5HQJcq+LVAALN/a8Vu4QqKGIr/d+Ho=#84ae
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
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy -c docker-compose.yml onprem-stack
```

### Stop and Destroy the Containers
```bash
docker stack rm onprem-stack
```

## Docker Images
* OnPrem Server - [timveil/oo-docker-onprem-server](https://hub.docker.com/r/timveil/oo-docker-onprem-server/)
* OnPrem Collector - [timveil/oo-docker-onprem-collector](https://hub.docker.com/r/timveil/oo-docker-onprem-collector/)
* Agent - [timveil/oo-docker-agent](https://hub.docker.com/r/timveil/oo-docker-agent/)

## Logging In to the OnPrem Server
Once the server is up, you can access the OverOps UI by going to `http://localhost:8080/login.html` or `http://analysis-server:8080/login.html`.  You may want to add the following entry to your hosts file.

```
127.0.0.1       analysis-server
```

The default username and password are as follows: 

|  Field | Value  |
| ------------- | ------------- |
| Username | `admin@takipi.com` |
| Password | `123456` |