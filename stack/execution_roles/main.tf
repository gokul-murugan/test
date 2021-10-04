module "service_linked_roles" {

  source = "../../modules/execution_roles"

  service_role_name = var.service_role_name
  service_principal = var.service_principal
  policy_name       = var.policy_name
  override_policies = [data.aws_iam_policy_document.test1.json, data.aws_iam_policy_document.test2.json]
}

# module "policy_1" {
#   source = "../"

#   arguments ....
# }

# module "policy_2" {
#   source = "../"

#   arguments ....
# }

# module "service_linked_roles" {

#   source = "../../modules/execution_roles"

#   service_role_name = var.service_role_name
#   service_principal = var.service_principal
#   policy_name       = var.policy_name
#   override_policies = [module.policy_1.policy_1, module.policy_2.policy_2]  # source_policy_documents or override_policies

# }

