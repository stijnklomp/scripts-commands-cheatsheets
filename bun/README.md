# Bun

## Dependency information

```sh
bun pm ls <dependency>

bun pm why <dependency>
```

## Version update for your own package

```sh
bunx npm version major
bunx npm version minor
bunx npm version patch

bunx npm version prepatch # 1.2.3 → 1.2.4-0
bunx npm version preminor # 1.2.3 → 1.3.0-0
bunx npm version premajor # 1.2.3 → 2.0.0-0
bunx npm version prerelease # 1.2.3-0 → 1.2.3-1
```

## Version update for dependency

```sh
bun update <dependency> # Respects SEMVER

bun add <dependency>@<version>
```

## Update all dependencies to latest version

```sh
bun update -i
```
