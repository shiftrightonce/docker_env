# Dev environment

Dev environment using docker containers to run various servers and services

# Setup
- Make sure docker is installed 
- Run dev.sh setup
- After the build is completed, a new directory will be created called ##projects##
- Clone or create your projects in this directory

# Register a new website/application
- copy the template.conf in docker/nginx into docker/nginx/sites
- rename the new file as per your needs
- edit the file and change the follow strings
    - [site domain here]  to your domain name. eg: example.test
    - [app public folder here] to point to your site public folder
- start/restart the contianers

# Helpful info
- To start the containers: while in this folder run ##sudo docker-compose up## .
  This command will run docker in the foreground. 
- Connecting your application to mariadb server
   - host: db
   - username: root
   - pasword: dbpassword
- Running composer, yarn or npm should be done in the ##phpfpm## container
- To login to the ##phpfpm## container execture: ##sudo doker-compose exec phpfpm bash## . 
  Once logged in, you will be in the ##projects## directory
- Add data that needs persisting, eg: mariadb databases, are store in the respective container folder.
  eg: mariadb databases are stored in ##docker/db/data##
- Running ##sh dev.sh## will display instructions on how to ssh into the other containers

# Important
- Make sure your fake domain are recorded in your hosts file
