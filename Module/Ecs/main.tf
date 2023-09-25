#provider, use alicloud
provider "alicloud" {
  access_key = "LTAI5t8Ykt6SbDG2GAdjuB9y"
  secret_key = "hB0MKotMCgdsa0hKsi9XbRP3UjPOjr"
  region     = "ap-southeast-1"
}
# ECS Instance Resource for Module
resource "alicloud_instance" "this" {
  image_id                            = var.image_id
  instance_type                       = var.instance_type
  security_groups                     = var.security_group_ids
  vswitch_id                          = var.vswitch_id
  instance_name                       = var.instance_name
  system_disk_size                    = var.system_disk_size
}