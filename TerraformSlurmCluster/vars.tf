variable "region" {
  type    = string
  default = "RegionOne"
}

variable "key_pair" {
  type    = string
  default = "slurm"
}

variable "ubuntu_jammy_image_id" {
  type = string
  default = "c363d3de-7811-432f-8e5a-75206ece6dac"
}

variable "mini_flavor_id" {
  type = string
  default = "7bea2f6b-ca8a-425f-8f42-ab540efba77a"
}

variable "slurm_flavor_id" {
  type = string
  default = "c20ceb66-ce9f-4488-ae57-981725b22f21"
}

variable "compute_instances_count" {
  type = number
  default = 3
}

variable "volume_size" {
  type = number
  default = 1000
}

variable "volume_type" {
  type = string
  default = "ceph"
}

variable "ipv6_external_network" {
  type = string
  default = "49c5cd87-ee9d-4a8e-9608-77eb9a46b583"
}

variable "slurm_subnet_cidr" {
  type = string
  default = "192.168.155.0/24"
}
