# Multiple persistent SSH agents

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
