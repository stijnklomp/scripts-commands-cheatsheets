# Multiple persistent SSH agents

## Prerequisites

- Python
If you use Python3 then you can link `python` to `python3` with:

```sh
sudo ln -s /usr/bin/python3 /usr/bin/python
```

## Docs

https://github.com/ccontavalli/ssh-ident

`~/.ssh-ident`
```sh
MATCH_PATH = [
#   (directory pattern, identity)
    (r"personal", "personal"),
    (r"work", "work"),
]

DEFAULT_IDENTITY = "personal"

SSH_ADD_DEFAULT_OPTIONS = "-t 43200"

VERBOSITY = LOG_WARN
```
