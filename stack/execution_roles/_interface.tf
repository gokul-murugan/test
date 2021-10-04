variable "service_principal" {
  description = "Service principal for the role to be trusted"
  type        = string
  default     = "lambda.amazonaws.com"
}

variable "service_role_name" {
  description = "Service role name"
  type        = string
  default     = "test_lambda"
}

variable "policy_name" {
  description = "Policy name"
  type        = string
  default     = "override"
}