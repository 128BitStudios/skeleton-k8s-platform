#!/usr/bin/env bash

# See this link for help if needed: https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nginx-ingress-with-cert-manager-on-digitalocean-kubernetes

# Install cert manager
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.2.0/cert-manager.yaml

# Install issuers
kubectl apply -f ../bsd-platform/certs
