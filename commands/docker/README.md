# Docker commands

## Installation Debian

### Prerequisites

#### OS Requirements

To install Docker Engine, you need the 64-bit version of one of these Debian or Raspbian versions:
* Debian Bullseye 11 (stable)
* Debian Buster 10 (oldstable)
* Raspbian Bullseye 11 (stable)
* Raspbian Buster 10 (oldstable)

Docker Engine is compatible with `x86_64` (or `amd64`), `armhf`, and `arm64` architectures.

### Install Docker

#### If Docker package already comes with your OS distribution

```Bash
sudo apt-get install docker.io
```

#### Install Docker on Debian Bullseye 11+ (stable) or Raspbian Bullseye 11+ (stable)

Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

##### Install repo
1. Update the `apt` package index and install packages to allow `apt` to use a repository over HTTPS:
```Bash
sudo apt-get update
sudo apt-get install \ ca-certificates \ curl \ gnupg
```

2. Add Docker&#39;s official GPG key:
```Bash
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

3. Use the following command to set up the repository:
```Bash
echo \
         "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
         "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
         sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

##### Install Docker Engine

1. Update the `apt` package index:
```Bash
sudo apt-get update
```

2. Install Docker Engine, containerd, and Docker Compose:
```Bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

##### Manage Docker as a non-root user

1. Create the docker group:
```Bash
sudo groupadd docker
```

2. Add your user to the docker group:
```Bash
sudo usermod -aG docker $USER
```

3. Log out and log back in so that your group membership is re-evaluated.
*You can also run the following command to activate the changes to groups:*
```Bash
newgrp docker
```

##### Configure Docker to start on boot with systemd

On Debian and Ubuntu, the Docker service starts on boot by default. To automatically start Docker and containerd on boot for other Linux distributions using systemd, run the following commands:
```Bash
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
```

### Uninstall Docker

Uninstall old versions:
```Bash
sudo apt-get remove docker docker-engine docker.io containerd runc
```

Uninstall Docker Engine:
```Bash
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
```

## Usage

Start Docker:
```Bash
systemctl start docker
```
```Bash
sudo /etc/init.d/docker start
```

Stop Docker:
```Bash
systemctl disable --now docker.service docker.socket
```
```Bash
sudo /etc/init.d/docker stop
```

List images:
```Bash
docker images
```

List all images:
```Bash
docker images -a
```

List containers:
```Bash
docker ps
```

List all containers:
```Bash
docker ps -a
```

List total file sizes:
```Bash
docker ps -s
```

Build image from local repo:
```Bash
docker build -t <tag> .
```

Build image from .tar file:
```Bash
docker load -i <tar-file>
```

Create .tar file from image:
```Bash
docker save -o <tar-file-name>.tar <image>
```

Remove image:
```Bash
docker image rm -f <image>
```

Remove all images:
```Bash
docker rmi -f $(docker images -aq)
```

Build and run container:
```Bash
docker run -dp 3000:3000 <tag>
```

Build and run container with name:
```Bash
docker run --name <name> -dp 3000:3000 <tag>
```

Stop running container:
```Bash
docker stop <container>
```

Remove container:
```Bash
docker rm <container>
```

Remove all container:
```Bash
docker rm -f $(docker ps -aq)
```

List all running containers:
```Bash
docker rmi -f $(docker images -aq)
```

Remove all images:
```Bash
docker rmi -f $(docker images -aq)
```

Remove all images:
```Bash
docker rmi -f $(docker images -aq)
```
