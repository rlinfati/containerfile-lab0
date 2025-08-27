# gurobi-ts

URLREPO=https://raw.githubusercontent.com/rlinfati/containerfile-lab0/refs/heads/master/kubernetes

# config gurobi-ts
kubectl apply -f $URLREPO/71-namespace.yaml
kubectl apply -f $URLREPO/72-secret-gurobi-lic.yaml
kubectl apply -f $URLREPO/73-deployment.yaml
kubectl apply -f $URLREPO/74-service.yaml

# check gurobi-ts

kubectl get all -n gurobi-ts
kubectl get cm -n gurobi-ts

# https://docs.cilium.io/en/stable/network/pod-mac-address/
