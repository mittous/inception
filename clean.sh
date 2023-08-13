#!/bin/bash
docker compose down -v
docker rm $(docker ps -aq)
docker image rm $(docker image ls -q)
rm -rf /home/imittous/data/my_db/*
rm -rf /home/imittous/data/wp_files/*
