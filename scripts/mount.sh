#!/bin/bash
#
# Mount cephfs on Host.
#

set -xe
ceph auth get-key client.admin > admin.secret
mount -t ceph \
      ceph-mon.ceph.svc.cluster.local:6789:/ \
      /mnt/cephfs \
      -o name=admin,secretfile=admin.secret
