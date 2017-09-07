```sh
kubectl -n ceph exec -ti ceph-mon-kxjnl -- cat /etc/ceph/ceph.conf > /etc/ceph/ceph.conf
kubectl -n ceph exec -ti ceph-mon-kxjnl -- cat /etc/ceph/ceph.client.admin.keyring > /etc/ceph/ceph.client.admin.keyring

wget https://github.com/BlackrockDigital/startbootstrap-creative/archive/gh-pages.zip
cp -rp creative-gh-pages/* /mnt/cephfs/nginx/

kubectl create secret generic mysql-pass --from-file=password.txt
```
