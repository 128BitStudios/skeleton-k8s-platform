#!/usr/bin/env bash

# Create namespaces
kubectl create namespace apis
kubectl create namespace apps

# Install Linkerd
linkerd install | kubectl apply -f -

# Label 3rd party tools
kubectl label namespace kube-system kube-system=true --overwrite

# Install yaml files for apps and namespaces
kubectl apply -f ../bsd-platform-apis
kubectl apply -f ../bsd-platform-apis/test-api
kubectl apply -f ../bsd-platform-apps
kubectl apply -f ../bsd-platform-apps/test-app

# Install load balancers
kubectl apply -f ../bsd-platform/nginx-ingress
