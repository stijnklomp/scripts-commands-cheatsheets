# Useful commands

### Publish a package
```bash
npm publish # `--tag <tag>` to add a tag
```

### Linking modules

##### Symlink a package
```bash
npm link
```

##### Link and install a linked package
```bash
npm link <package name from package.json>
```
Note that it will put the package under the version of Node that the package uses

##### Unlink a package
```bash
npm unlink <package>
```

##### List modules
```bash
npm ls
```

##### List all globally linked modules
```bash
npm ls -g --depth=0 --link=true
```

### Tags

##### Tag package
```bash
# Add tag to current package
npm tag <tag> # `--remove` to remove the tag

# Add tag to specific version of package
npm tag <package>@<version> <tag> # `--remove` to remove the tag
```

##### List all associated tags with package
```bash
npm dist-tag ls <package> # <package> can be left empty for current package
```
