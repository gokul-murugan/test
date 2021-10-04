
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

resource "aws_iam_role_policy_attachment" "role_policy" {

  policy_arn = format("arn:aws:iam::aws:policy/service-role/%s", var.service_role_policy_name)
  role       = aws_iam_role.service_roles.name
}