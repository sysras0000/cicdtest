# cicdtest

git clone https://github.com/sysras0000/cicdtest.git
cd cicdtest

Build Jenkins
kubectl create -f jenkinsci-pod.yaml
./add_jenkins_service.sh

Build PostgreSQL
kubectl create -f pgsqlpod.yaml
./add_pgsql_service.sh

Build nginx
kubectl create -f nginxpod.yaml
./add_nginx_service.sh

kubectl get services, make note of the external ip addresses of each service
Browse the the jenkins ipaddress:8080, follow installation steps, get the password with this command
$ kubectl exec -it jenkins01 -- cat /var/jenkins_home/secrets/initialAdminPassword
