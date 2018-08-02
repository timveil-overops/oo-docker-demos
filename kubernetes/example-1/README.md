Creating

```bash
kubectl create -f k8s-collector-service.yaml
kubectl create -f k8s-agent-service.yaml
kubectl create -f k8s-collector-deployment.yaml
kubectl create -f k8s-agent-deployment.yaml
```


Cleaning up

```bash
kubectl delete deployment collector-deployment
kubectl delete deployment agent-deployment
kubectl delete service agent-service
kubectl delete service collector-service
```