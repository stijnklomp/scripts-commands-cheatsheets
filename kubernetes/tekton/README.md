# Tekton

## Installation

```sh
# Tekton Pipelines
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

# Tekton Triggers
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml

# Tekton Dashboard
kubectl apply -f https://github.com/tektoncd/dashboard/releases/latest/download/release-full.yaml
```

### Monitor

```sh
kubectl get pods -n tekton-pipelines -w
```

## Info

```sh
# Version
tkn version
```
