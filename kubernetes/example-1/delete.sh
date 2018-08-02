#!/bin/bash

kubectl delete deployment collector-deployment
kubectl delete deployment agent-deployment
kubectl delete service agent-service
kubectl delete service collector-service