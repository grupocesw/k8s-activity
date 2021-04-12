#!bin/bash

kubectl exec -it nginx-pod -c nginx -- apt update
kubectl exec -it nginx-pod -c nginx -- apt install -y iputils-ping