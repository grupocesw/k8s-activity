# ** Warning ** - Installed and configured Virtual Box, Minikube and Kubetcl in advance

# Run test by SH
sh 1.config-minikube.sh</br>
sh 2.create-pods.sh</br>
sh 3.install-iputils-ping-nginx.sh</br>
sh 4.ping-nignx-to-mysql-service.sh</br>
sh 5.open-nginx-browser.sh

# Config Memory, CPUs and Disk size in minikube
minikube config set memory 3096</br>
minikube config set cpus 3</br>
minikube config set disk-size 30Gi

# Dashboard Minikube
minikube dashboard</br>
git remote add origin https://grupocesw@github.com/grupocesw/k8s-activity.git

# Start Minikube
minikube start

# Delete Minikube
minikube delete

# Create Secret
kubectl create secret generic mysql-pass --from-literal=password='root'

# Create PODs
kubectl apply -f ./k8s

# Delete PODs
kubectl delete -f ./k8s

# Install iputils-ping in nginx container
kubectl exec -it nginx-pod -c nginx -- apt update</br>
kubectl exec -it nginx-pod -c nginx -- apt install -y iputils-ping

# Access nginx and mysql containers in pods
kubectl exec -it nginx-pod -c nginx -- bash</br>
kubectl exec -it mysql-pod -c db-mysql -- bash

# Exec nginx pd ping to mysql service
kubectl exec -it nginx-pod -c nginx -- ping mysql-service

# Show url and port nginx service to external access
minikube service nginx-service --url</br>
kubectl get svc nginx-service