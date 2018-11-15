#!/bin/bash

docker-compose up --no-start
docker-compose start roach-0
docker-compose start roach-1
docker-compose start roach-2
docker-compose exec roach-0 /cockroach/cockroach init --insecure
docker-compose start lb
docker-compose start generator


