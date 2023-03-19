# --from-file
kubectl create configmap --save-config sample-configmap --from-file=./nginx.conf

kubectl get configmap sample-configmap -o json | jq .data

kubectl describe configmap sample-configmap