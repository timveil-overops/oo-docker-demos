# Instructions
The on-prem demo includes a docker image for the analysis server, remote collector and to agents (one java and one scala).  To begin navigate to the `onprem` directory and run the following commands.

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
