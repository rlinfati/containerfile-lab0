# StrongSWAN IKEv2 tls

URLREPO=https://raw.githubusercontent.com/rlinfati/containerfile-lab0/refs/heads/master/kubernetes

# config swan-ikev2
kubectl apply -f $URLREPO/61-namespace.yaml
kubectl apply -f $URLREPO/62-service-ingress.yaml
kubectl apply -f $URLREPO/63-cert-tls.yaml
kubectl apply -f $URLREPO/64-config-ikev2-x509ca.yaml
kubectl apply -f $URLREPO/65-config-ikev2-fenix.yaml
kubectl apply -f $URLREPO/65-config-ikev2-grutt.yaml
kubectl apply -f $URLREPO/66-deployment.yaml
kubectl apply -f $URLREPO/67-service.yaml

# check swan-ikev2

kubectl get all -n ingress-nginx
kubectl get all,cm,secret -n swan-ikev2
