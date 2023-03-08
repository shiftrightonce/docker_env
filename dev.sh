#!/bin/bash

if [ $# -gt 0 ]
then
   if [ $1 = 'setup' ]
   then
      echo '--- setting up your dev environment ---'
      mkdir -p .key
      mkdir -p projects
      cp /home/${USER}/.ssh/id_rsa ./.key/id_rsa
      cp env.example .env
      docker compose build
   fi
else
    echo "---> Quick help <----"
    echo "setup : Setup your environment for the first time".
    echo "docker compose up : Starts the containers"
    echo "docker compose exec db bash : ssh into the mysql container"
    echo "docker compose exec phpfpm bash : ssh into the php environment. This is where you should run composer"
    echo "docker compose exec nginx bash: ssh into the web server container"
    echo "docker compse exec workspace bash : ssh into the general container"
fi
