#/bin/bash
kubectl expose pod nginx --type="LoadBalancer" --name=nginx --port=80 --target-port=80
