vault_name=$1
app='datahub'
env='dev'
aks_namespace=$2
aks_secret=$3

secNameBase="uni-oi-${app}-${env}"

AZURE_CLIENT_ID=$(az keyvault secret show  --vault-name "${vault_name}" --name "${secNameBase}-client-secret" --query value --output tsv)
AZURE_CLIENT_SECRET=$(az keyvault secret show  --vault-name "${vault_name}" --name "${secNameBase}-client-secret" --query value --output tsv)

kubectl delete secret ${aks_secret} --namespace=${aks_namespace}

kubectl create secret generic ${aks_secret} \
    --from-literal=AZURE_CLIENT_ID=$AZURE_CLIENT_ID \
    --from-literal=AZURE_CLIENT_SECRET=$AZURE_CLIENT_SECRET \
    --namespace=${aks_namespace}