#/bin/bash
kubectl expose pod pgsql01 --name pgsql --type LoadBalancer --port 5432 --protocol TCP
