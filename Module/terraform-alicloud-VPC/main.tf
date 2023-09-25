#provider, use alicloud
provider "alicloud" {
  access_key = "LTAI5tPFQN5veWPXujAGQds4"
  secret_key = "noyI1aLMwraTLq0dHtK5gWiIJoR5f6"
  region     = "ap-southeast-1"
}
// If there is not specifying vpc_id, the module will launch a new vpc
resource "alicloud_vpc" "vpc" {
  vpc_name          = var.vpc_name
  cidr_block        = var.vpc_cidr
  route_table_id    = var.route_table_id
}