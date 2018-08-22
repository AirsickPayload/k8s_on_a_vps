#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
KUBECONFIG="${DIR}/admin.conf" helm --tiller-namespace tooling $@
