helm install postgres-operator postgres-operator-charts/postgres-operator \
  --create-namespace \
  --version=1.10.1 \
  --set configGeneral.kubernetes_use_configmaps=true \
  --set securityContext.runAsUser=101 \
  -n instana-postgres

