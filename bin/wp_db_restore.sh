#!/bin/bash

docker cp $1 $(docker-compose ps -q wordpress):/tmp/$1
docker exec --user www-data -i $(docker-compose ps -q wordpress) wp db import /tmp/$1
docker exec -i $(docker-compose ps -q wordpress) rm /tmp/$1

if [ ! -z "$2" ] && [ ! -z "$3" ]; then
  docker exec --user www-data -i $(docker-compose ps -q wordpress) wp search-replace $2 $3
fi

