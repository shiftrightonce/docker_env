#!/bin/bash

# Move into the projects folder
cd projects

# Make folders required for later in the script
mkdir --verbose faith_packages
mkdir --verbose databases

# Clone the crm
git clone ssh://git@git.faithcsde.com:2222/faith/faithcrm.git crm
# Move into the crm folder
cd crm
# Check out dev channel
git checkout dev
# Move back to the projects folder
cd ..

# Clone the api
git clone ssh://git@git.faithcsde.com:2222/faith/api.git
# Move into the api folder
cd api
# Check out the dev channel
git checkout dev
# Move back to the projects folder
cd ..

# Clone the website
git clone ssh://git@git.faithcsde.com:2222/faith/faithwebsite.git fweb
# Move into the fweb folder
cd fweb
# Check out the dev channel
git checkout dev
# Move back to the projects folder
cd ..

# Clone Geoff's Website Fork
git clone ssh://git@git.faithcsde.com:2222/GCaldL/faithwebsite.git gweb

# Clone Caleb's Website Fork
git clone ssh://git@git.faithcsde.com:2222/Caleb_Suthers/faithwebsite.git cweb

# Move into the faith_packages folder
cd faith_packages
# Clone Caleb's uteachme package
git clone ssh://git@git.faithcsde.com:2222/Caleb_Suthers/uteachme_package.git uteachme
# Move back to the projects folder
cd ..

# Move into the databases folder
cd databases
# Download adminer
wget https://github.com/vrana/adminer/releases/download/v4.7.7/adminer-4.7.7.php
# Rename the downloaded file
mv adminer*.php index.php

# Get into phpfpm container
docker-compose exec phpfpm bash

