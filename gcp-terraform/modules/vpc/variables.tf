variable "name" {}
variable "region" {}
variable "subnet_cidr" {}

variable "internal_cidr" {
  description = "Internal CIDR range to allow full internal traffic"
  type        = string
  default     = "10.0.0.0/16"
}

