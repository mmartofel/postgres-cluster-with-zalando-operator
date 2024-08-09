oc adm policy add-cluster-role-to-user cluster-admin -z default -n instana-postgres
oc adm policy add-cluster-role-to-user cluster-admin -z builder -n instana-postgres 
oc adm policy add-cluster-role-to-user cluster-admin -z deployer -n instana-postgres
oc adm policy add-cluster-role-to-user cluster-admin -z pipeline -n instana-postgres
