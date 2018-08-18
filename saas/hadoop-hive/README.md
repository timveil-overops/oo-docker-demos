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
> !quit
```

# set this to 6gb on a box with 8gb allocated
YARN_CONF_yarn_nodemanager_resource_memory___mb=6144