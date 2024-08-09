# Operator install instructions available here:
# https://github.com/zalando/postgres-operator/blob/master/docs/quickstart.md#deployment-options
# apply the manifests in the following order
oc new-project instana-postgres
oc apply -f postgres-scc.yaml -n instana-postgres
oc apply -f anyuid.yaml -n instana-postgres
oc apply -f postgres-operator/manifests/configmap.yaml -n instana-postgres # configuration
oc apply -f postgres-operator/manifests/operator-service-account-rbac-openshift.yaml -n instana-postgres # identity and permissions
oc apply -f postgres-operator/manifests/postgres-operator.yaml -n instana-postgres # deployment
oc apply -f postgres-operator/manifests/api-service.yaml -n instana-postgres # operator API to be used by UI
