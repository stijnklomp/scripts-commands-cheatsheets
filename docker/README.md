# Docker commands

## Usage

Start Docker:
```bash
systemctl start docker
```
```bash
sudo /etc/init.d/docker start
```

Stop Docker:
```bash
systemctl disable --now docker.service docker.socket
```
```bash
sudo /etc/init.d/docker stop
```

List images:
```bash
docker images
```

List all images:
```bash
docker images -a
```

List containers:
```bash
docker ps
```

List all containers:
```bash
docker ps -a
```

List total file sizes:
```bash
docker ps -s
```

Build image from local repo:
```bash
docker build -t <tag> .
```

Build image from .tar file:
```bash
docker load -i <tar-file>
```

Create .tar file from image:
```bash
docker save -o <tar-file-name>.tar <image>
```

Remove image:
```bash
docker image rm -f <image>
```

Remove all images:
```bash
docker rmi -f $(docker images -aq)
```

Build and run container:
```bash
docker run -dp 3000:3000 <tag>
```

Build and run container with name:
```bash
docker run --name <name> -dp 3000:3000 <tag>
```

Stop running container:
```bash
docker stop <container>
```

Remove container:
```bash
docker rm <container>
```

Remove all container:
```bash
docker rm -f $(docker ps -aq)
```

List all running containers:
```bash
docker rmi -f $(docker images -aq)
```

List ports of all containers:
```bash
docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a
```

Shell into running container:
```bash
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
