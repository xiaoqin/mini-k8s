#!/bin/bash

# kube::default_build_targets return list of all build targets
kube::default_build_targets() {
  echo "cmd/apiserver/apiserver.go"
  echo "cmd/kubelet/kubelet.go"
  echo "cmd/scheduler/scheduler.go"
}

binaries=($(kube::default_build_targets))

kube::golang::build_binaries() {
    if [ ! -d ${BIN_DIR} ]; then
        mkdir -p ${BIN_DIR}
    fi
    for bin in ${binaries[@]}; do
        go build -o "${BIN_DIR}" "${bin}"
    done
}