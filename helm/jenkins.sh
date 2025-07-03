#!/bin/bash
kubectl create namespace jenkins
helm repo add jenkins https://charts.jenkins.io
helm repo update

helm install jenkins jenkins/jenkins -n jenkins \
  --set server.service.type=NodePort \
  --set server.service.nodePort=35000