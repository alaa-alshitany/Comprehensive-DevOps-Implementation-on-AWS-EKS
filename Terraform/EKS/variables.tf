variable "region" {
  type = string
}

variable "account_id" {
  type = string
  default = "471112647219"
}
variable "cluster-name" {
  type = string
  default = "proj-cluster"
}

variable "cluster-role-name" {
  type = string
  default = "proj-cluster-role"
}

variable "node-group-name" {
  type = string
  default = "proj-node-group"
}

variable "node-group-role" {
  type = string
  default = "proj-node-group-role"
}

variable "repo-name" {
  type = string
  default = "node-app-repo"
}

variable "private_subnet_ids" {
  type        = list(string)
}

variable "security_group_ids" {
  type        = string
}