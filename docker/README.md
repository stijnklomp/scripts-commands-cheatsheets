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

List images:
```sh
docker images
```

List all images:
```sh
docker images -a
```

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

Remove image:
```sh
docker image rm -f <image>
```

Remove all images:
```sh
docker rmi -f $(docker images -aq)
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

Remove container:
```sh
docker rm <container>
```

Remove all container:
```sh
docker rm -f $(docker ps -aq)
```

List all running containers:
```sh
docker rmi -f $(docker images -aq)
```

List ports of all containers:
```sh
docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a
```

Shell into running container:
```sh
docker exec -ti <container name> /bin/bash
```

## Extra

Install cURL into:
Ubuntu:
```sh
apt update && apt upgrade -y upgrade && apt -y install curl
```

Alpine container:
```sh
apk update && apk upgrade --no-cache && apk --no-cache add curl
```
