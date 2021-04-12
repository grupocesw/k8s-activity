#!bin/bash

minikube config set memory 3096
minikube config set cpus 3
minikube config set disk-size 30Gi

minikube start --profile=minikube