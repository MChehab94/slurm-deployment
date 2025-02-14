resource "openstack_blockstorage_volume_v3" "nfs-ceph" {
  region      = var.region
  name        = "nfs-ceph"
  size        = var.volume_size
  volume_type = var.volume_type
}

resource "openstack_compute_volume_attach_v2" "nfs-ceph-attach" {
  instance_id = openstack_compute_instance_v2.terraform-slurm-controller.id
  volume_id   = openstack_blockstorage_volume_v3.nfs-ceph.id
  depends_on = [openstack_compute_instance_v2.terraform-slurm-controller]
}
