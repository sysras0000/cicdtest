#!/bin/bash
kubectl exec pgsql01 --stdin --tty -- psql -U postgres -c "create user panop with password 'letmein';"
kubectl exec pgsql01 --stdin --tty -- psql -U postgres -c "create database panop;"
kubectl exec pgsql01 --stdin --tty -- psql -U postgres -c "grant all privileges on database panop to panop;"
