# Kubernetes volume provisioning using Ceph distributed storage
Bring persistent storage for your containers with RBD, CephFS on Kubernetes.
* RBD, CephFS Volumes
* RBD, CephFS Persistent Volumes.
* RBD Storage classes.
* CephFS Provisioner and Storage classes.

Requirement:
* Linux Kernel should be newer than 4.2.0.
* Ceph and RBD utilities must be installed on masters and nodes
* The Kubernetes SkyDNS addon needs to be set as a resolver on masters and nodes
