# AWS Terragrunt

## Failed to execute Terragrunt command (like `terragrunt init`)

Sometimes AWS will error when trying to pull state from an S3 bucket and say
that certain SSO required configuration is missing. Exporting all AWS SSO
related environment variables might resolve this issue.

```sh
eval "$(aws configure export-credentials --format env)"
```
