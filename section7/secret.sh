# --from-file
echo -n "root" > ./username
echo -n "password" > ./password

kubectl create secret generic --save-config sample-db-auth1 --from-file=./username --from-file=./password

kubectl get secret sample-db-auth1 -o json | jq .data

# --from-env-file
kubectl create secret generic --save-config sample-db-auth2 --from-env-file ./env-secret.env

# --from-literal
kubectl create secret generic --save-config sample-db-auth3 --from-literal=username=root --from-literal=password=rootpassword

# -f
kubectl apply -f sample-db-auth.yaml

