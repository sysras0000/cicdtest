#/bin/bash
kubectl expose pod jenkins01 --type="LoadBalancer" --name=jenkins --port=8080 --target-port=8080
