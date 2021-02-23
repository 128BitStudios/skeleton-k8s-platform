### Get commands

- `kubectl get pods -A`
- `kubectl get services -A`
- `kubectl get ingresses -A`
- `kubectl get gateways -A`
- `kubectl get deployments -A`
- `kubectl get configmaps -A`
- `kubectl get namespaces -A`

### Restart a pod after modification

1. Find name of pod using `kubectl get pods -A`
2. Enter `kubectl delete pod {pod} -n {namespace}`

###### Example: `kubectl delete pod test-api-6756bb5f69-qw9bn -n apis`

### Minikube

###### Start dashboard as background process:  `minikube dashboard` 
###### Start tunnelling process to access pods:  `minikube tunnel` 
