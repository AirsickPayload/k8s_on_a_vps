# NOTES

* The readme is in a very WIP/barebones state; the Helm chart cannot be easily modified/used at a first glance
* the cluster I'm using was deployed using [kubespray](https://github.com/kubernetes-incubator/kubespray) on a single, regular Ubuntu 16.04 VPS
* since this a VPS, not a cloud-provider's k8s cluster, I'm relying on `nginx-ingress` as the Ingress controller
* values contained within `values-public.yaml` are _generic_, you'll have to modify them a bit (especially `cert-manager's` and SSL/domain/nginx settings ) to make the Helm chart work for you
* if you cannot read a file (because it's a binary), then it means it is encrypted


1. `cd custom-cluster`
2. `../kubectl.sh apply -f setup-tiller-rbac.yml`
3. `KUBECONFIG=admin.conf ../helm.sh init --service-account tiller --tiller-namespace tooling`
4. `../kubectl.sh rollout status -w deployment/tiller-deploy --namespace tooling`
3. `../helm.sh upgrade custom -i -f values-public.yaml  ./`