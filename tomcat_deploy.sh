#!/bin/bash

# Construction du conteneur
# Les fichiers sample.war et tomcat_test.sh seront copiés dans le répertoire /tmp du conteneur
docker build -t tomcat-container .

# Lancement du conteneur "tomcat-container"
docker run -t -d --privileged=true --name tomcat-app tomcat-container

# Lancement du script tomcat_test.sh dans le conteneur "tomcat-container"
CONTAINER_ID=$(docker ps --last 1 | awk '/tomcat-container/ {print $1}')
docker exec $CONTAINER_ID /tmp/tomcat_test.sh $1
