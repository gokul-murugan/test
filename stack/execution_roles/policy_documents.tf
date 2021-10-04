data "aws_iam_policy_document" "test1" {
  statement {
    sid       = "OverridePlaceHolderOne"
    effect    = "Deny"
    actions   = ["ec2:*"]
    resources = ["*"]
  }
}

data "aws_iam_policy_document" "test2" {
  statement {
    sid    = "OverridePlaceHolderTwo"
    effect = "Deny"

    actions   = ["iam:*"]
    resources = ["*"]
  }
}