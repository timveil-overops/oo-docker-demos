```bash
docker images -a | grep "timveil" | awk '{print $3}' | xargs docker rmi
```

or 

```bash
docker system prune -a -f --volumes
```
```
_ => .
__ => _
___ => -
```

```bash
$ docker-compose exec hs2 bash
# /opt/hive/bin/beeline -u jdbc:hive2://localhost:10000
> CREATE TABLE pokes (foo INT, bar STRING);
> LOAD DATA LOCAL INPATH '/opt/hive/examples/files/kv1.txt' OVERWRITE INTO TABLE pokes;
```

todo: why am i specifying a bunch of unused env values for services not used?
