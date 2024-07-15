variable "region" {
  type = string
}

variable "vpc_cidr" {
 type        = string
 description = "vpc CIDR"
}

variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR"
}
 
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
}

variable "azs" {
 type        = list(string)
 description = "Availability Zones"
}