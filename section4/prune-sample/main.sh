kubectl apply -f ./prune-sample --prune -l system=a

rm prune-sample/sample-pod2.yaml

kubectl apply -f ./prune-sample --prune -l system=a