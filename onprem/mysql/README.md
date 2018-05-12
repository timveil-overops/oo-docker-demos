# Instructions
The on-prem demo includes a docker image for the MySQL, analysis server, remote collector and two agents (one java and one scala).  This demonstrates how to use MySQL as the backend for OverOps instead of H2 which is bundled with our Java server binary.  To begin, you must first update the value for `SECRET_KEY` in `.env` then run the following commands.

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


Once the server is up, you can access the OverOps UI by going to http://localhost:8080/login.html or http://analysis-server:8080/login.html.  You may need to add the following entry to your hosts file.

```
127.0.0.1       analysis-server
```

Username and password are as follows:

Username: `admin@takipi.com`
Password: `123456`