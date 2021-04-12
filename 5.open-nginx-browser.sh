#!bin/bash
echo "URL EXTERNAL NGINX: $(minikube service nginx-service --url)"
xdg-open $(minikube service nginx-service --url)