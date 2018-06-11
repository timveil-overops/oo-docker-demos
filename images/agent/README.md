To build the image run the following command. `SECRET_KEY` and `COLLECTOR_HOST` are a required build arguments.  `COLLECTOR_PORT` is optional and defaults to `6060`.  `MACHINE_NAME` is optional and defaults to `agent`.
```
docker build --no-cache -t timveil/overops-agent:latest --build-arg SECRET_KEY=<YOUR SECRET KEY> --build-arg COLLECTOR_HOST=<YOUR COLLECTOR HOST> .
```
```
docker build --no-cache -t timveil/overops-agent:latest --build-arg SECRET_KEY=<YOUR SECRET KEY> --build-arg COLLECTOR_HOST=<YOUR COLLECTOR HOST> --build-arg COLLECTOR_PORT=<YOUR COLLECTOR PORT> --build-arg MACHINE_NAME=<YOUR MACHINE NAME> .
```

To publish the image run the following command:
```
docker push timveil/overops-agent:latest
```

To run the image execute the following command:
```
docker run timveil/overops-agent
```