#!/usr/bin/env bash

# Create namespaces
kubectl create namespace apis
kubectl create namespace apps

# Create 3rd party tool namespaces
kubectl create namespace istio-system

# Label namespaces
kubectl label namespace apis istio-injection=enabled --overwrite
kubectl label namespace apps istio-injection=enabled --overwrite

# Label 3rd party tools
kubectl label namespace istio-system istio=system --overwrite
kubectl label namespace kube-system kube-system=true --overwrite

# Install yaml files (cannot run gateway.yml files on local machines)
kubectl apply -f ../bsd-platform-apis/test-api
kubectl apply -f ../bsd-platform-apps/test-app
