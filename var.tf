variable "vpc_name" {
  description = "The vpc name used to launch a new vpc."
  type        = string
  default     = "TF-VPC"
}

variable "vpc-cidr" {
    description = "VPC CIDR"
    type = string
}

variable "vswitch_name" {
  description = "The vswitch name prefix used to launch several new vswitches."
  default     = "TF-VSwitch"
}

variable "vpc_id" {
  description = "ID of the VPC where to create security group"
  type        = string
  default     = ""
}

variable "security_group_type" {
  description = "The type of the security group. Valid values: 'normal'(basic security group.), 'enterprise'(advanced security group For more information.). Default to 'normal'."
  type        = string
  default     = "normal"
}

variable "group_name" {
  description = "(Deprecated) It has been deprecated from 2.0.0 and use 'name' instead."
  type        = string
  default     = ""
}

variable "resource_group_id" {
  description = "Id of Resource group"
  type        = string
  default     = null
}

variable "ingress_rules" {
  description = "List of ingress rules to create by name"
  type        = list(string)
  default     = []
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

