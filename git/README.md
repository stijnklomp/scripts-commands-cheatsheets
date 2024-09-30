# Useful commands

### Branches

##### Update remote-tracking branches and remove deleted branches

```sh
git remote update origin --prune
```

##### Remove remote branch
```sh
git push -d <remote> <branch>
# In most cases, `<remote>` will be `origin`
```

##### Remove local branch
```sh
# Only delete branch if it has already been fully merged in its upstream branch
git branch -d <branch>

# Force delete
git branch -D <branch>
```

### Changes

##### Revert changes to modified files
```sh
git reset --hard
```

##### Remove all untracked files and directories
```sh
git clean -fd
```

##### Show only changed files from commit
```sh
git diff-tree --no-commit-id --name-only <commit hash> -r
```

### Stash

##### Stash single file
```sh
git stash -- <file name>
```

#### Stash specific file(s)
```sh
git stash push -m <name> <file[example/*]>
```

##### Create named stash
```sh
git stash push -m <name>
```

##### Apply and drop a stash
```sh
git stash pop stash@{<number>}
```

##### Drop a stash
```sh
# Drop top stash
git stash drop

# Drop specified stash
git stash drop stash@{<number>}
```

##### List stashes
```sh
git stash list
```

##### Remove all stashes
```sh
git stash clear
```

##### Remove single stash
```sh
git stash drop stash@{<number>}
```

### Resole merge conflicts

##### Accept local version for file
```sh
git checkout --ours <file>
```

##### Accept local version for all conflicting files
```sh
git merge --strategy-option ours
```

##### Accept remote version for file
```sh
git checkout --theirs <file>
```

##### Accept remote version for all conflicting files
```sh
git merge --strategy-option theirs
```

### Merge

##### Accept all incoming changes
```sh
git merge -X theirs <branch>
```

### Rebase

##### Accept all incoming changes
```sh
git rebase -X ours <branch>
```

##### Link
`https://phoenixnap.com/kb/how-to-resolve-merge-conflicts-in-git#ftoc-heading-4`
