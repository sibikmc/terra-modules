# This module would call the each corresponding module 
module "VPC" {
  source  = "./Module/terraform-alicloud-VPC"
  version = "2.3.4"
}

module "Security_Groups" {
  source = "./Module/Security_Groups"
  name                = var.group_name
  vpc_id              = var.vpc_id
  security_group_type = var.security_group_type
  resource_group_id   = var.resource_group_id
  ingress_rules       = var.ingress_rules
}

module "Ecs" {
  source = "./Module/Ecs"
  name                       = var.instance_name
  instance_type              = var.instance_type
  image_id                   = var.image_id
  system_disk_category       = var.system_disk_category
}