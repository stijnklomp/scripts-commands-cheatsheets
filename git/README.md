# Git

## Info

### See last two commits
```sh
git log HEAD~2..HEAD
```

## Gitignore

### Remove staged file/directory that has been to gitignore
```sh
git rm -r --cached <dir/file>
```

### Keep file in repo but freeze future changes
```sh
git update-index --assume-unchanged <file>
```

### Placeholder file
```sh
git update-index --assume-unchanged <file> # Untrack changes
git update-index --no-assume-unchanged <file> # Re-track changes
```

## Branches

### Update remote-tracking branches and remove deleted branches
```sh
git remote update origin --prune
```

### Remove remote branch
```sh
git push -d <remote> <branch>
# In most cases, `<remote>` will be `origin`
```

### Remove local branch
```sh
# Only delete branch if it has already been fully merged in its upstream branch
git branch -d <branch>

# Force delete
git branch -D <branch>
```

## Changes

### Revert changes to modified files
```sh
git reset --hard
```

### Remove all untracked files and directories
```sh
git clean -fd
```

### Show only changed files from commit
```sh
git diff-tree --no-commit-id --name-only <commit hash> -r
```

## Stash

### Stash all unstaged files
```sh
git stash push --keep-index
```

### Stash single file
```sh
git stash -- <file name>
```

### Stash specific file(s)
```sh
git stash push -m <name> <file[example/*]>
```

### Create named stash
```sh
git stash push -m <name>
```

### Apply and drop a stash
```sh
git stash pop stash@{<number>}
```

### Drop a stash
```sh
# Drop top stash
git stash drop

# Drop specified stash
git stash drop stash@{<number>}
```

### List stashes
```sh
git stash list
```

### Remove all stashes
```sh
git stash clear
```

### Remove single stash
```sh
git stash drop stash@{<number>}
```

## Resole merge conflicts

### Accept local version for file
```sh
git checkout --ours <file>
```

### Accept local version for all conflicting files
```sh
git merge --strategy-option ours
```

### Accept remote version for file
```sh
git checkout --theirs <file>
```

### Accept remote version for all conflicting files
```sh
git merge --strategy-option theirs
```

## Merge

### Accept all incoming changes
```sh
git merge -X theirs <branch>
```

### Squash merge
```sh
git merge --squash <branch>
```

## Rebase

### Accept all incoming changes
```sh
git rebase -X ours <branch>
```

### Interactive rebase for last two commits
```sh
git rebase -ir HEAD~2
```

## Delete

### Delete last commit
```sh
git reset --hard HEAD^
```

### Link
`https://phoenixnap.com/kb/how-to-resolve-merge-conflicts-in-git#ftoc-heading-4`

## Tag

### Annotated tags
```sh
git tag -a v1.0.0 -m "1.0.0"
```

### Show tag
```sh
git show v1.0.0
```

## Settings

### Global ignore
Add your desired ignore files/directories to `~/.config/git/ignore`
