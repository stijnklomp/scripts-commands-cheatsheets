# Useful docker-compose commands

### Stopping services

Build and run container with name:
```bash
docker run --name <name> -dp 3000:3000 <tag>
```

Remove/Stop services only
```bash
docker-compose stop
```

Stop and remove containers, networks..
```bash
docker-compose down 
```

Down and remove volumes
```bash
docker-compose down --volumes 
```

Down and remove images
```bash
docker-compose down --rmi <all|local>
```

Remove all containers, images, volumes, networks and undefined containers
```bash
docker-compose down --rmi all -v --remove-orphans
```
