# Useful commands

### Branches

##### Update remote-tracking branches and remove deleted branches

```bash
git remote update origin --prune
```

##### Remove remote branch
```bash
git push -d <remote> <branch>
# In most cases, `<remote-name>` will be `origin`
```

##### Remove local branch
```bash
# Only delete branch if it has already been fully merged in its upstream branch
git branch -d <branch>

# Force delete
git branch -D <branch>
```

### Stash

##### Create named stash
```bash
git stash push -m "<name>"
```

##### Apply and drop a stash
```bash
git stash pop stash@{<number>}
```

##### List stashes
```bash
git stash list
````
