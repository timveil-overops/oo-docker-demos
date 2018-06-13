*as a workaround for the install script, SECRET_KEY is used to build image then immediately removed; use TAKIPI_SECRET_KEY environment variable when running image to properly run collector*

To build the image run the following command. `SECRET_KEY` is a required build argument.  `COLLECTOR_PORT` is optional and defaults to `6060`.  `MACHINE_NAME` is optional and defaults to `collector`.

```
docker build --no-cache -t timveil/overops-onprem-collector:latest --build-arg SECRET_KEY=<YOUR SECRET KEY> .
```
```
docker build --no-cache -t timveil/overops-onprem-collector:latest --build-arg SECRET_KEY=<YOUR SECRET KEY> --build-arg COLLECTOR_PORT=<YOUR COLLECTOR PORT> --build-arg MACHINE_NAME=<YOUR MACHINE NAME> .
```

To publish the image run the following command:
```
docker push timveil/overops-onprem-collector:latest
```

To run the image execute the following command:
```
docker run -e TAKIPI_SECRET_KEY=<YOUR SECRET KEY> -e TAKIPI_BASE_URL=<YOUR BASE URL> timveil/overops-onprem-collector
```