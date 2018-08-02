#!/bin/bash

kubectl create -f k8s-collector-service.yaml
kubectl create -f k8s-agent-service.yaml
kubectl create -f k8s-collector-deployment.yaml
kubectl create -f k8s-agent-deployment.yaml