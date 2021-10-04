data "aws_iam_policy_document" "role_trust_policy" {

  statement {
    actions = [
      "sts:AssumeRole"
    ]

    effect = "Allow"

    principals {
      type = "Service"
      identifiers = [
        var.service_principal
      ]
    }
  }
}

resource "aws_iam_role" "service_roles" {

  name               = var.service_role_name
  path               = "/platform/"
  assume_role_policy = data.aws_iam_policy_document.role_trust_policy.json
}

# ---------------------

data "aws_iam_policy_document" "policy" {
  override_policy_documents = var.override_policies
  #   source_policy_documents = var.source_policies
}

resource "aws_iam_role_policy" "service_role_policy" {

  name   = var.policy_name
  policy = data.aws_iam_policy_document.policy.json
  role   = aws_iam_role.service_roles.name
}