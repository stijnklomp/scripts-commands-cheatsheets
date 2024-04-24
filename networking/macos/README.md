# Networking commands

Find your IP
```sh
ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2
```
