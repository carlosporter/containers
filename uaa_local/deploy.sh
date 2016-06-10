#!/bin/bash



# builds a new image for 
docker build -t uaa_local .

# starts a new container
docker run --name uaa_local -p 8080:8080 -v $( pwd )/config:/uaa -it uaa_local
