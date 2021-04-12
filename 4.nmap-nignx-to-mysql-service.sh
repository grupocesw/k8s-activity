#!bin/bash

kubectl exec -it nginx-pod -c nginx -- nmap -p 3306 mysql-service