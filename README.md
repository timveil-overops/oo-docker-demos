# OverOps Docker Demos

* [Hybrid](hybrid)
* [On Premise](onprem)
* [SaaS](saas)

You can easily delete previously download images for these examples with the following command.

```
docker images -a | grep "timveil" | awk '{print $3}' | xargs docker rmi
```