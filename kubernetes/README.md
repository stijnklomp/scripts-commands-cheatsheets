# Kubernetes

## Kind

Run local cluster

```sh
# Run a local Kubernetes cluster
kind create cluster --name <clusterName>

# Configure kubectl
kubectl config use-context <contextName>

# Create a namespace
kubectl create namespace <namespaceName>

# Switch to namespaced context
kubectl config set-context <contextName> --namespace <namespaceName>
```

Cluster related details

```sh
# List existing clusters
kind get clusters
```
