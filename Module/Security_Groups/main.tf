#provider, use alicloud
provider "alicloud" {
  access_key = "LTAI5tC7b6FWW5Fk7LuP3sZX"
  secret_key = "Lui4mSfk0WILgHiLo3IO2F9JnOJLjV"
  region     = "ap-southeast-1"
}

// Create a new Security Group Resource for Module
resource "alicloud_security_group" "this" {
  name                = var.group_name
  vpc_id              = var.vpc_id
  security_group_type = var.security_group_type
  resource_group_id   = var.resource_group_id
  }
