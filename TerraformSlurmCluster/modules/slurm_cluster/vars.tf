variable "region" {
  type = string
  description = "OpenStack Region variable for deployment"
}

variable "os_image_id" {
  type = string
  description = "Operating system to use for the VMs."
}

variable "default_flavor_id" {
  type = string
  description = "Openstack flavor for other VMs (e.g. prometheus, grafana etc.)."
}

variable "slurm_flavor_id" {
  type = string
  description = "Openstack flavor for all SLURM VMs."
}

variable "key_pair" {
  type = string
  description = "SSH key that will be used to login into the cluster."
}

variable "compute_instances_count" {
  type = number
  description = "Number of SLURM compute instances to create."
}

variable "volume_type" {
  type = string
  description = "Can be ceph or quobyte_hdd (depends on what's supported in your Openstack setup)"
}

variable "volume_size" {
  type = number
  description = "Size of the volume in GB"
}

variable "external_network" {
  type = string
  description = "ID of the external network to be assigned/attached on the VMs."
}

variable "slurm_subnet_cidr" {
  type = string
  description = "CIDR block for the SLURM internal network."
}
