variable "service_principal" {
  description = "Service principal for the role to be trusted"
  type        = string
}

variable "service_role_name" {
  description = "Service role name"
  type        = string
}

variable "service_role_policy_name" {
  description = "Service role policy name"
  type        = string
}