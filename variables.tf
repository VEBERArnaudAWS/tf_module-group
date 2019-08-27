variable "bypass" {
  type = bool
}

variable "name" {
  type = string
}

variable "users" {
  type = list(string)

  default = []
}

variable "policy_arn" {
  type = string
}
