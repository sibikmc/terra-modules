variable "rules" {
  description = "Map of known security group rules (define as 'name' = ['from port', 'to port', 'protocol', 'description'])"
  type        = map(list(any))
  default = {
        # Open all ports & protocols
    all-all  = [-1, -1, "all", "All protocols"]
    all-tcp  = [0, 65535, "tcp", "All TCP ports"]
    all-udp  = [0, 65535, "udp", "All UDP ports"]
    all-icmp = [-1, -1, "icmp", "All IPV4 ICMP"]
  }
}

variable "auto_groups" {
  description = "Map of groups of security group rules to use to generate modules (see update_groups.sh)"
  type        = map(map(list(string)))

  # Valid keys - ingress_rules, egress_rules, ingress_with_self, egress_with_self
  default = {
    https-443 = {
      ingress_rules     = ["https-443-tcp"]
      ingress_with_self = ["all-all"]
      egress_rules      = ["all-all"]
    }
    https-8443 = {
      ingress_rules     = ["https-8443-tcp"]
      ingress_with_self = ["all-all"]
      egress_rules      = ["all-all"]
    }
    https-22 = {
      ingress_rules     = ["https-22-tcp"]
      ingress_with_self = ["all-all"]
      egress_rules      = ["all-all"]
    }
    
  }
}