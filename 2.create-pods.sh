#!bin/bash

kubectl create secret generic mysql-pass --from-literal=password='root'
kubectl apply -f k8s