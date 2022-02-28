#!/bin/bash

# Move into the projects folder
cd projects

# Make folders required for later in the script
mkdir --verbose faith_packages
mkdir --verbose databases

# Get into phpfpm container
docker-compose exec phpfpm bash

