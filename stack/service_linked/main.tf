variable "service_roles" {
  type        = map(any)
  description = " "

  default = {
    "AWSBackupDefaultServiceRole" = {
      "service_principal"        = "backup.amazonaws.com"
      "service_role_policy_name" = "AWSBackupServiceRolePolicyForBackup"
    },
    "APIGatewayCloudWatchLogs" = {
      "service_principal"        = "apigateway.amazonaws.com"
      "service_role_policy_name" = "AmazonAPIGatewayPushToCloudWatchLogs"
    },
    "dms-vpc-role" = {
      "service_principal"        = "dms.amazonaws.com"
      "service_role_policy_name" = "AmazonDMSVPCManagementRole"
    }

  }
}

module "service_linked_roles" {
  source = "../../modules/service_linked"

  for_each = var.service_roles

  service_role_name        = each.key
  service_principal        = each.value.service_principal
  service_role_policy_name = each.value.service_role_policy_name
}