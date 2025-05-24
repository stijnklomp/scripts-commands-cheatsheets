# Docker commands

## Usage

Start Docker:
```sh
systemctl start docker
```
```sh
sudo /etc/init.d/docker start
```

Stop Docker:
```sh
systemctl disable --now docker.service docker.socket
```
```sh
sudo /etc/init.d/docker stop
```

## Images

List images:
```sh
docker images
```

List all images:
```sh
docker images -a
```

Build image from local repo:
```sh
docker build -t <tag> .
```

Build image from .tar file:
```sh
docker load -i <tar-file>
```

Create .tar file from image:
```sh
docker save -o <tar-file-name>.tar <image>
```

## Containers

List containers:
```sh
docker ps
```

List all containers:
```sh
docker ps -a
```

List total file sizes:
```sh
docker ps -s
```

Build and run container:
```sh
docker run -dp 3000:3000 <tag>
```

Build and run container with name:
```sh
docker run --name <name> -dp 3000:3000 <tag>
```

Stop running container:
```sh
docker stop <container>
```

Stop all containers:
```sh
docker stop $(docker ps -aq)
```

List ports of all containers:
```sh
docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a
```

Shell into running container:
```sh
docker exec -ti <container name> /bin/bash
docker exec -ti <container name> /sh
```

## Remove commands

Remove image:
```sh
docker image rm -f <image>
```

Remove all images:
```sh
docker rmi -f $(docker images -aq)
```

Remove container:
```sh
docker rm <container>
```

Remove all containers:
```sh
docker rm -f $(docker ps -aq)
```

Remove all volumes and unused data:
```
docker system prune --all --force && docker system prune --volumes —force
```

## Temp containers

Alpine:
```sh
docker run --rm -ti -v $(pwd):/src alpine sh -c 'apt-get update && apt-get install man-db ; sh'
```

## Extra

Install cURL:
Debian:
```sh
apt update && apt upgrade -y upgrade && apt -y install curl
```

Alpine:
```sh
apk update && apk upgrade --no-cache && apk --no-cache add curl
```

Install ps&top:
Debian:
```sh
apt update && apt install -y procps
```
