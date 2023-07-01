Create
```bash
kind create cluster --config kind.yaml --name kindcluster
```

Create with Calico
```bash
kind create cluster --config kind.yaml --name kindcluster --config disable-default-cni.yaml 
kubectl get pods --all-namespaces   # Check CoreDNS is Pending
kubectl cluster-info dump | grep -- --cluster-cidr  # Check Pod Subnet  e.g. "--cluster-cidr=10.244.0.0/16",
curl -s https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/custom-resources.yaml | sed 's,192.168.0.0/16,10.244.0.0/16,' > calico.yaml
kubectl apply -f calico.yaml
kubectl get pods --all-namespaces   # Check CoreDNS and Calico Pods are runnning 
```

Delete
```bash
kind delete cluster --name kindcluster
```