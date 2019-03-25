#!/bin/bash
# Install docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
# Pull and run docker image
docker run -p 80:8080 bitnami/tomcat:latest
