# JQ

## Strings

```sh
# Escaped JSON string
echo '<jsonString>' | tr -d '\' | jq '.'
```

## Truncating

```sh
# Truncate fields
jq '.. |= (if type == "string" then .[0:10] else . end)'
```
