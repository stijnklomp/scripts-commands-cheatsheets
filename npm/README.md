# NPM

## Dependency information

```sh
npm ls <dependency>
```

## Version update for your own package

```sh
npm version major
npm version minor
npm version patch

npm version prepatch # 1.2.3 → 1.2.4-0
npm version preminor # 1.2.3 → 1.3.0-0
npm version premajor # 1.2.3 → 2.0.0-0
npm version prerelease # 1.2.3-0 → 1.2.3-1
```

## Version update for dependency

```sh
npm update <dependency> # Respects SEMVER

npm install <dependency>@<version>
pnpm/yarn add <dependency>@<version>
```

## Update all dependencies to latest version

```sh
ncu -u
```

## Before

You can add the following to an `.npmrc` file to ensure that no modules from
after this date are downloaded:

```
before=$(date -v-14d '+%Y-%m-%d')
```

To ignore this for an `npm i` command, add the `--before=null` flag.
