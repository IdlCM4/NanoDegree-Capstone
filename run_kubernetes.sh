#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=idlcm4/helloworld

# Step 2
# Run the Docker Hub container with kubernetes
r=$(kubectl get pod helloworld 2> /dev/null;echo $?)
if [ "_$r" == "_1" ]
 then
    kubectl run helloworld \
    --image=$dockerpath \
    --image-pull-policy="Always" \
    --overrides='{"apiVersion": "v1", "spec":{"imagePullSecrets": [{"name": "regcred"}]}}'
fi

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward helloworld 3000:3000
