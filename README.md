# OverOps Docker Demos

OverOps (OO) supports three deployment models (SaaS, Hybrid, On-Prem) and works well with both containers and traditional servers or virtual machines.  The following examples demonstrate how to get up and running quickly using Docker for each deployment model using a variety of configurations and techniques.  While these examples use Docker Compose to define multiple services, the underlying Docker images could be used alone or with a variety of other container management or orchestration tools.  In fact, the edge channel of Docker for Mac/Windows now allows you to leverage either Swarm or Kubernetes as the underlying orchestrator.  If you are using this version of Docker, then it's possible to deploy to Swarm or Kubernetes using the provided `docker-compose.yml` files.  This is quick way to test OverOps in Kubernetes!

## Examples

* SaaS Deployment Model
    * [Remote Collector Example](saas/remote-collector)
    * [Remote Collector Example - Alpine (glibc)](saas/remote-collector-glibc)
    * [Remote Collector Example - Alpine (musl)](saas/remote-collector-musl)
    * [Remote Collector Example with Nginx](saas/remote-collector-nginx)
    * [Remote Collector Example with HA](saas/remote-collector-ha)
    * [Local Collector Example](saas/local-collector)
    * [Mounted Agent Example](saas/mounted-agent)
    * [Mounted Agent Example - Alpine (glibc)](saas/mounted-agent-glibc)
    * [Mounted Agent Example - Alpine (musl)](saas/mounted-agent-musl)
    * [Cassandra Example](saas/cassandra)
    * [NiFi Example](saas/nifi)
    * [Hadoop 2.7.x and Hive 1.2.x Example](saas/hadoop-hive-1.2.x)    
    * [Hadoop 2.8.x and Hive 2.3.x Example](saas/hadoop-hive-2.3.x)    
    * [Hadoop 3.1.x and Hive 3.1.x Example](saas/hadoop-hive-3.1.x)    
* Hybrid Deployment Model 
    * [Basic](hybrid/basic)
* On-Prem Deployment Model
    * [H2](onprem/h2)
    * [MySQL](onprem/mysql)
    * [Postgres](onprem/postgres)
    * [Webhook](onprem/webhook-example)
* Kubernetes Examples
    * [Example 1](kubernetes/example-1)    
    * [Example 2](kubernetes/example-2)    
    
    

## Tips and Tricks

### Cleaning up Docker

You can easily delete previously download images for these examples with the following command:
```bash
docker images -a | grep "timveil" | awk '{print $3}' | xargs docker rmi -f
```

or, for a complete system prune (this is what I usually do):
```bash
docker system prune -a -f --volumes --filter "label=maintainer=tjveil@gmail.com"
```

Remove all stopped containers:
```bash
docker ps -aq --no-trunc -f status=exited | xargs docker rm
```

Remove all dangling images:
```bash
docker images -q --filter dangling=true | xargs docker rmi
```