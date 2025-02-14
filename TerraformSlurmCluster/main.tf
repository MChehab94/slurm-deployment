module "slurm_cluster" {
  source = "./modules/slurm_cluster"
  
  region		  = var.region

  key_pair                = var.key_pair
  compute_instances_count = var.compute_instances_count

  slurm_flavor_id         = var.slurm_flavor_id
  os_image_id             = var.ubuntu_jammy_image_id
  default_flavor_id       = var.mini_flavor_id

  volume_size = var.volume_size
  volume_type = var.volume_type

  external_network = var.ipv6_external_network
  slurm_subnet_cidr = var.slurm_subnet_cidr
}
