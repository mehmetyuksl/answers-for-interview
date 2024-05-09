#!/bin/bash

# Evicted podları bul ve sil
kubectl get pods --all-namespaces | grep Evicted | awk '{print $2, "--namespace", $1}' | xargs kubectl delete pod