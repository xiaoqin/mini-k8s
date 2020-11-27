#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

KUBE_ROOT=$(dirname "${BASH_SOURCE}")/..

source "${KUBE_ROOT}/hack/init.sh"

KUBE_VERBOSE="${KUBE_VERBOSE:-1}"

cd "${KUBE_ROOT}"

kube::golang::build_binaries "$@"