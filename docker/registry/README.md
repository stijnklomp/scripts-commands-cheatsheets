# Docker registry

## Manage local registry

Start registry:
```sh
docker run -d -p 5000:5000 --name registry registry:2
```

Stop registry:
```sh
docker container stop registry
```

Remove all data:
```sh
docker container rm -v registry
```

Point image to registry:
```sh
docker image tag <image> localhost:5000/<image>
```

Push to registry:
```sh
docker push localhost:5000/<image>
```

Pull from registry:
```sh
docker pull localhost:5000/<image>
```
