To build the image run the following command. `SECRET_KEY` is a required build argument.  `MACHINE_NAME` is optional and defaults to `agent-local-collector`.
```
docker build --no-cache -t timveil/overops-agent-local-collector:latest --build-arg SECRET_KEY=<YOUR SECRET KEY> .
```
```
docker build --no-cache -t timveil/overops-agent-local-collector:latest --build-arg SECRET_KEY=<YOUR SECRET KEY> --build-arg MACHINE_NAME=<YOUR MACHINE NAME> .
```

To publish the image run the following command:
```
docker push timveil/overops-agent-local-collector:latest
```

To run the image execute the following command:
```
docker run timveil/overops-agent-local-collector
```


docker build --no-cache -t timveil/overops-agent-local-collector:latest --build-arg SECRET_KEY=S34749#PtqgO3AQi2NNOEZD#2hpk07nOVmYBTSuIDkjy9MBY4PGCboVkttTZWx/wHJ8=#773c .