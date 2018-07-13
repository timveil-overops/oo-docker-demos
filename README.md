# OverOps Docker Demos

OverOps (OO) supports three deployment models (SaaS, Hybrid, On-Prem) and works well with both containers and traditional servers or virtual machines.  The following examples demonstrate how to get up and running quickly using Docker for each deployment model using a variety of configurations and techniques.  While these examples use Docker Compose to define multiple services, the underlying Docker images could be used alone or with a variety of other container management or orchestration tools.  In fact, the edge channel of Docker for Mac/Windows now allows you to leverage either Swarm or Kubernetes as the underlying orchestrator.  If you are using this version of Docker, then it's possible to deploy to Swarm or Kubernetes using the provided `docker-compose.yml` files.  This is quick way to test OverOps in Kubernetes!

## Examples

* SaaS Deployment Model
    * [Remote Collector Example](saas/remote-collector) - Agent and Collector deployed in separate containers.  This configuration is known as *Remote* Collector.
    * [Local Collector Example](saas/local-collector) - Agent and Collector are installed in the same container.  This configuration is known as *Local* Collector.
    * [Mounted Agent Example](saas/mounted-agent) - Uses volume mount and various environment variables to monitor jvm without installing OO agent inside container.
    * [Cassandra Example](saas/cassandra) - Example using OO to monitor Cassandra running inside container.
    * [NiFi Example](saas/nifi) - Example using OO to monitor Apache NiFi running inside container.
* [Hybrid Deployment Model](hybrid) - Example of OO Hybrid deployment leveraging agent, remote collector and storage server in separate containers.
* On-Prem Deployment Model
    * [Basic](basic) - Includes OO Server, Agent and *Remote Collector*.  H2 is used as OO Server backend.
    

## Tips and Tricks

You can easily delete previously download images for these examples with the following command:

```bash
docker images -a | grep "timveil" | awk '{print $3}' | xargs docker rmi
```