# Useful commands

### Printing the data of a key (Do not use in production)
```sh
type <key> # Print type


-> "string" : get <key>
-> "hash"   : hgetall <key>
-> "list"   : lrange <key> 0 -1
-> "set"    : smembers <key>
-> "zset"   : zrange <key> 0 -1 withscores
```
