# Useful docker-compose commands

### Stopping services

##### Stop services only
docker-compose stop

##### Stop and remove containers, networks..
docker-compose down 

##### Down and remove volumes
docker-compose down --volumes 

##### Down and remove images
docker-compose down --rmi <all|local>
