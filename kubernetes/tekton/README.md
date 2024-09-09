# Tekton

```sh
# Install Tekton Pipelines
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

# Monitor installation
kubectl get pods --namespace tekton-pipelines --watch
```
