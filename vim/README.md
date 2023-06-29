# Useful Vim commands

### File explorer mode

##### Open new explore
```bash
:Explore
:Sexplore
:Vexplore
```

##### Go to directory
```bash
:e <directory>
```

##### Create new directory
```bash
d
```

##### Create new file
```bash
%
```

### Tabs

##### Create new tab
```bash
:tabe <filepath>
```

##### Close current tab
```bash
:tabc
```

##### Switch tabs
```bash
:tabn OR gt
:tabp OR gT
<number>gt
```

##### Move tabs
```bash
:tabmove +2 # Move two places to the right
: tabmove -2 # Move two places to the left
:tabmove 1 # Move to the second position
:tabmove # Move to the last position
```

### Search and replace

##### Search
```bash
/<pattern>
```
`n` to go to next item
`N` to go to previous item

##### Replace
```bash
# In current line
:s/foo/bar/g

# In all lines
:%s/foo/bar/g

# Case sensitive
:%s/foo/bar/gi
```
