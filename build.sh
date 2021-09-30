#!/bin/bash
result=$( sudo docker images -q flaskapp:latest )

if [[ -n "$result" ]]; then
  echo "Container exists"
  kubectl delete deployment flask-test-app
  docker rmi flaskapp
else
  echo "No such container"
  docker build -t flaskapp /root/flask/
fi
