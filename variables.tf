variable "bypass" {
  type = string
}

variable "name" {
  type = string
}

variable "users" {
  type = list

  default = []
}

variable "policy_arn" {
  type = string
}
