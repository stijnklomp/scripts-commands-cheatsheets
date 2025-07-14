# Useful commands

# Publish a package
```sh
npm publish # `--tag <tag>` to add a tag
```

# Linking modules

## Symlink a package
```sh
npm link
```

## Link and install a linked package
```sh
npm link <package name from package.json>
```
Note that it will put the package under the version of Node that the package uses

## Unlink a package
```sh
npm unlink <package>
```

# List modules
```sh
npm ls
```

## List all globally linked modules
```sh
npm ls -g --depth=0 --link=true
```

# Tags

## Tag package
```sh
# Add tag to current package
npm tag <tag> # `--remove` to remove the tag

# Add tag to specific version of package
npm tag <package>@<version> <tag> # `--remove` to remove the tag
```

## List all associated tags with package
```sh
npm dist-tag ls <package> # <package> can be left empty for current package
```

# npm-check-updates

## Update all dependencies to latest versions
```sh
ncu -u
```

# Version update 
```sh
npm version major `--no-git-tag-version`
npm version minor `--no-git-tag-version`
npm version patch `--no-git-tag-version`
```
