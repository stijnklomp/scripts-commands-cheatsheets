# Mermaid CLI Docker Runner

A lightweight shell wrapper to run the Mermaid CLI ("minlag/mermaid-cli") in Docker. It maps your current working directory into the container and automatically fixes file permissions so output files are owned by your host user.

## Prerequisites

* [Docker Engine](https://docs.docker.com/get-docker/) installed and running.

## Quick Start

1. Make the script executable:
```bash
chmod +x run-mermaid.sh
```

2. Generate a diagram:
```bash
./run-mermaid.sh -i diagram.md -o diagram.svg
```

## Usage

```bash
./run-mermaid.sh [-v|--version <tag>] [mermaid-cli-flags]
```

### Options

* **"-v, --version <tag>"**: Specify a "minlag/mermaid-cli" Docker image version (defaults to "latest").
* **"-h, --help"**: Display wrapper script usage syntax.
* **"[mermaid-cli-flags]"**: Pass-through arguments forwarded directly to the Mermaid CLI (e.g., "-i", "-o", "-t", "-b").

### Examples

**Standard conversion to PNG:**
```bash
./run-mermaid.sh -i architecture.mmd -o architecture.png
```

**Pin to a specific Mermaid version with a dark theme:**
```bash
./run-mermaid.sh --version 10.9.0 -i architecture.mmd -o architecture.svg -t dark
```
