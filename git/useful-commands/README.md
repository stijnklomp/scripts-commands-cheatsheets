# Useful commands

### Branches

##### Update remote-tracking branches and remove deleted branches

```bash
git remote update origin --prune
```

##### Remove remote branch
```bash
git push -d <remote> <branch>
# In most cases, `<remote>` will be `origin`
```

##### Remove local branch
```bash
# Only delete branch if it has already been fully merged in its upstream branch
git branch -d <branch>

# Force delete
git branch -D <branch>
```

### Changes

##### Revert changes to modified files
```bash
git reset --hard
```

##### Remove all untracked files and directories
```bash
git clean -fd
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
```

##### Remove all stashes
```bash
git stash clear
```

##### Remove single stash
```bash
git stash drop stash@{<number>}
```

### Resole merge conflicts

##### Accept local version for file
```bash
git checkout --ours <file>
```

##### Accept local version for all conflicting files
```bash
git merge --strategy-option ours
```

##### Accept remote version for file
```bash
git checkout --theirs <file>
```

##### Accept remote version for all conflicting files
```bash
git merge --strategy-option theirs
```

##### Link
`https://phoenixnap.com/kb/how-to-resolve-merge-conflicts-in-git#ftoc-heading-4`
