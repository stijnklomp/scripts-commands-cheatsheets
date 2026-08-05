#!/usr/bin/env bash

set -e

VERSION="latest"
CLI_ARGS=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    -v|--version)
      VERSION="$2"
      shift 2
      ;;
    -h|--help)
      echo "Usage: $0 [-v|--version <tag>] [mermaid arguments...]"
      echo "Example: $0 -v 10.9.0 -i diagram.mmd -o diagram.svg"
      exit 0
      ;;
    *)
      CLI_ARGS+=("$1")
      shift
      ;;
  esac
done

docker run --rm \
  -u "$(id -u):$(id -g)" \
  -v "$PWD:/data" \
  "minlag/mermaid-cli:$VERSION" \
  "${CLI_ARGS[@]}"
