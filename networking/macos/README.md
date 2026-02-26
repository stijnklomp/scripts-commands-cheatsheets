# Networking commands

Find IP:
```sh
ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2
```

Find default network:
```sh
route -n get default
```
