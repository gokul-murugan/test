variable "service_principal" {
  description = "Service principal for the role to be trusted"
  type        = string
}

variable "service_role_name" {
  description = "Service role name"
  type        = string
}

variable "policy_name" {
  description = "Policy name"
  type        = string
}

variable "override_policies" {
  description = "List of override policy documents"
  type        = list(string)
}