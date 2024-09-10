# Kubernetes

## Kind

### Create

```sh
# Create a local Kubernetes cluster
kind create cluster --name <clusterName>
```

### Delete

```sh
kind delete cluster
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

# Set context values
kubectl config set-context <contextName> --cluster kind-<clusterName> --namespace <namespaceName>

# Switch to namespaced context
```

### Details
```sh
kubectl get pods --all-namespaces
```

### Delete

```sh
kubectl delete --all pods --namespace=<namespaceName>

# Delete pods in all namespaces
kubectl delete --all pods --all-namespaces
```
