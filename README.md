# kubespray_host

1. `./kubectl.sh apply -f setup-tiller-rbac.yml`
1. `KUBECONFIG=admin.conf helm init --service-account tiller --tiller-namespace tooling`