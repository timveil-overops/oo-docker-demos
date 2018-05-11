# Instructions
The hybrid demo includes a docker image for a remote collector, a java agent and the storage server.  To begin, you must first update the value for `SECRET_KEY` in `.env` then run the following commands.  Your Secret Key must correspond to a Service ID that has Hybrid Storage enabled.  This must be preformed by OverOps.

When configuring the OverOps Storage Server via the UI, "Storage server address" should be `http://storage:8080`.  This is the address the collector needs.  "Web app-facing address" should be `http://localhost:8080`.  This is the address the UI needs.


Build the images
```
docker-compose build --no-cache
```

Start the images
```
docker-compose up
```

Stop and destroy the images
```
docker-compose down
```
