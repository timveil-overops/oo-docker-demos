# OverOps OnPrem Example with Webhook
This is a simple example of an OverOps "OnPrem" deployment.  The `docker-compose.yml` contains the following services:
* `server` - the OverOps backend server, supporting OverOps UI, etc
* `collector` - an OverOps Collector running in a dedicated container (aka Remote Collector)
* `agent` - an OverOps Agent and sample event generator app
* `webhook` - a sample webhook endpoint

## Getting Started
To begin, you must first create a `overops-key.env` file and place it in the same directory as the `Dockerfile`.  Below is a sample `overops-key.env` file.  The sample `SECRET_KEY` included below is a valid, limited trial key.

```properties
# Sample .env file
TAKIPI_SECRET_KEY=S1#qrXOZTWZsAzN2X0x#02G06kYSRWvet5HQJcq+LVAALN/a8Vu4QqKGIr/d+Ho=#84ae
```

from the Alert settings you can add the following url as a Webhook endpoint:

```
http://webhook:8090/webhook
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
* Webhook - [timveil/oo-webhook-example](https://hub.docker.com/r/timveil/oo-webhook-example/)

## Logging In to the OnPrem Server
Once the server is up, you can access the OverOps UI by going to `http://localhost:8080/login.html` or `http://server:8080/login.html`.  You may want to add the following entry to your hosts file.

```
127.0.0.1       server
```

The default username and password are as follows: 

|  Field | Value  |
| ------------- | ------------- |
| Username | `admin@takipi.com` |
| Password | `123456` |