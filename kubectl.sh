#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
kubectl --kubeconfig="${DIR}/admin.conf" $@
