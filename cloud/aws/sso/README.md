# AWS CLI SSO login

## Docs

https://docs.aws.amazon.com/cli/latest/userguide/sso-configure-profile-token.html

```sh
aws sso login --profile <profile>

export AWS_PROFILE=<profile>
```

Export AWS variables. (Sometimes needed for Terragrunt or other tools that
require the standalone variables instead of reading the cache files)

```sh
eval "$(aws configure export-credentials --format env)"
```
