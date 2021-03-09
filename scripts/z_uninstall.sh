#!/usr/bin/env bash

# Uninstall minikube (local only)
# minikube delete

# Uninstall istio (remote only) - See post here https://stackoverflow.com/questions/54261468/uninstall-istio-all-components-completely-from-kubernetes-cluster
# kubectl get pods -o=jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.metadata.namespace}{"\t"}{..image}{"\n\n"}{end}' -A | grep 'istio/proxyv' | grep -v istio-system
# kubectl get crds | grep 'istio.io' | cut -f1-1 -d "." |     xargs -n1 -I{} bash -c "  echo {} && kubectl get --all-namespaces  {} -o wide  && echo -e '---'"
# kubectl get crds | grep 'istio.io' |   xargs -n1 -I{} sh -c "kubectl delete crd {}"

# Reset 
# kubectl label default <namespace name> istio-injection=disabled
