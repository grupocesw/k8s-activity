#!bin/bash

kubectl exec -it nginx-pod -c nginx -- ping mysql-service