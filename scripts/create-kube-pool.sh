#!/bin/bash
#
# Create kube pool.
#

set -xe

ceph osd pool create kube 64 64
ceph auth get-or-create client.kube mon 'allow r' osd 'allow rwx pool=kube'
ceph auth get-key client.kube > ceph-kube-key
ceph auth get-key client.admin > ceph-admin-key

kubectl create secret generic --type="kubernetes.io/rbd" admin-key --from-file=./ceph-admin-key -n kube-system
kubectl create secret generic --type="kubernetes.io/rbd" kube-key --from-file=./ceph-kube-key
