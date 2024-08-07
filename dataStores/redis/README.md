# Useful commands

## Non production
### Printing the data of a key
```sh
type <key> # Print type


-> "string" : get <key>
-> "hash"   : hgetall <key>
-> "list"   : lrange <key> 0 -1
-> "set"    : smembers <key>
-> "zset"   : zrange <key> 0 -1 withscores
```

### Removing data
```sh
# Remove all data
redis-cli flushall

# Remove all keys matching pattern
redis-cli -p 6380 KEYS "SOURCE-*" | xargs redis-cli -p 6380 DEL
```
