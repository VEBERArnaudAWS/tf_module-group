variable "bypass" {
  type = bool
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
