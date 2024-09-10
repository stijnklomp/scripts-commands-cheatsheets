# Kubernetes

## Kind

### Run

```sh
# Run a local Kubernetes cluster
kind create cluster --name <clusterName>
```

### Details

```sh
# List existing clusters
kind get clusters
```

## Kubectl

### Use specific cluster and namespace

```sh
# Configure kubectl
kubectl config use-context <contextName>

# Create a namespace
kubectl create namespace <namespaceName>

# Switch to namespaced context
kubectl config set-context <contextName> --namespace <namespaceName>
```

### Details
```sh
kubectl get pods --all-namespaces
```

### Delete

```sh
kubectl delete --all pods --namespace=<namespaceName>
```
