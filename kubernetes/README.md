# Kubernetes

## Kind

### Create

```sh
# Create a local Kubernetes cluster
kind create cluster -n <cluster name>
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
kubectl config use-context <context>

# Create a namespace
kubectl create namespace <namespace>

# Set context values
kubectl config set-context <context> --cluster kind-<cluster> --namespace <namespace>

# Switch to namespaced context
kubectl config set-context --current --namespace <namespace>
```

### Details
```sh
# View kube-config
kubectl config view

# Contexts
kubectl config get-contexts

# Current cluster
kubectl config view --minify -ojson | jq ".contexts[0].name"

# All namespaces
kubectl get namespaces

# All pods in all namespaces
kubectl get pods --all-namespaces
```

### Delete

```sh
# Delete all in namespace
kubectl delete all --all -n <namespace>

# Delete pods in namespace
kubectl delete --all pods -n <namespace>

# Delete pods in all namespaces
kubectl delete --all pods --all-namespaces
```
