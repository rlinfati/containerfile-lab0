# Load Balancer

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/refs/heads/v0.15/config/manifests/metallb-native.yaml
# FIX https://github.com/metallb/metallb/branches/active

kubectl label node $(hostname --long) node.kubernetes.io/exclude-from-external-load-balancers-

kubectl get configmap kube-proxy -n kube-system -o yaml | \
sed -e "s/strictARP: false/strictARP: true/" | \
kubectl apply -f - -n kube-system

URLREPO=https://raw.githubusercontent.com/rlinfati/containerfile-lab0/refs/heads/master/kubernetes

# config vlan130
kubectl apply -f $URLREPO/52-ubbIP-vlan130.yaml
kubectl get all -n metallb-system
kubectl logs -n metallb-system deployment.apps/controller

# config placeholder
kubectl apply -f $URLREPO/53-ubbIP-vlan130-ip152.yaml
kubectl apply -f $URLREPO/53-ubbIP-vlan130-ip153.yaml
kubectl apply -f $URLREPO/53-ubbIP-vlan130-ip154.yaml
kubectl apply -f $URLREPO/53-ubbIP-vlan130-ip155.yaml
kubectl apply -f $URLREPO/53-ubbIP-vlan130-ip156.yaml
kubectl apply -f $URLREPO/53-ubbIP-vlan130-ip157.yaml

# check placeholder
kubectl get all -n caddy-placeholder
kubectl logs -n caddy-placeholder deployment.apps/caddy-152lapiz
kubectl logs -n caddy-placeholder deployment.apps/caddy-153papel
kubectl logs -n caddy-placeholder deployment.apps/caddy-154libro
kubectl logs -n caddy-placeholder deployment.apps/caddy-155fenix
kubectl logs -n caddy-placeholder deployment.apps/caddy-156radio
kubectl logs -n caddy-placeholder deployment.apps/caddy-157reloj
