# OverOps Docker Demos

OverOps (OO) supports three deployment models (SaaS, Hybrid, On-Prem) and works well with both containers and traditional servers or virtual machines.  The following examples demonstrate how to get up and running quickly using Docker for each deployment model using a variety of configurations and techniques.  While these examples use Docker Compose to define multiple services, the underlying Docker images could be used alone or with a variety of other container management or orchestration tools.  In fact, the edge channel of Docker for Mac/Windows now allows you to leverage either Swarm or Kubernetes as the underlying orchestrator.  If you are using this version of Docker, then it's possible to deploy to Swarm or Kubernetes using the provided `docker-compose.yml` files.  This is quick way to test OverOps in Kubernetes!

## Examples

* SaaS Deployment Model
    * [Remote Collector Example](saas/remote-collector) - Agent and Collector deployed in separate containers.  This configuration is known as *Remote* Collector.
    * [Remote Collector Example - Alpine (glibc)](saas/remote-collector-glibc) - Agent and Collector deployed in separate Alpine Linux containers using `glibc`.  This configuration is known as *Remote* Collector.
    * [Remote Collector Example - Alpine (musl)](saas/remote-collector-musl) - Agent and Collector deployed in separate  Alpine Linux containers using `musl`.  This configuration is known as *Remote* Collector.
    * [Remote Collector Example with Nginx](saas/remote-collector-nginx) - Multiple Remote Collectors load balanced by Nginx.
    * [Remote Collector Example with HA](saas/remote-collector-ha) - Multiple Remote Collectors load balanced by OverOps.
    * [Local Collector Example](saas/local-collector) - Agent and Collector are installed in the same container.  This configuration is known as *Local* Collector.
    * [Mounted Agent Example](saas/mounted-agent) - Uses volume mount and various environment variables to monitor JVM without installing OO Agent inside container.
    * [Mounted Agent Example - Alpine (glibc)](saas/mounted-agent-glibc) - Uses volume mount and various environment variables to monitor JVM without installing OO Agent inside a Alpine Linux container.
    * [Mounted Agent Example - Alpine (musl)](saas/mounted-agent-musl) - Uses volume mount and various environment variables to monitor JVM without installing OO Agent inside a Alpine Linux container.
    * [Cassandra Example](saas/cassandra) - Uses OO to monitor Cassandra running inside container.
    * [NiFi Example](saas/nifi) - Uses OO to monitor Apache NiFi running inside container.
    * [Hadoop 2.8.x Example](saas/hadoop-hive-2.8.x) - Uses OO to monitor Apache Hadoop and Hive.    
    * [Hadoop 3.1.x Example](saas/hadoop-hive-3.1.x) - Uses OO to monitor Apache Hadoop and Hive.    
* Hybrid Deployment Model 
    * [Basic](hybrid/basic) - Example of OO Hybrid deployment using Agent, *Remote* Collector and Storage Server in separate containers.
* On-Prem Deployment Model
    * [Basic](onprem/basic) - Example of OO On-Prem deployment using Server, Agent and *Remote* Collector in separate containers.  H2 is used as the OO Server database.
    * [Webhook](onprem/webhook-example) - Same as basic but includes an example WebHook endpoint.
    

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