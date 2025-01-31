module "github-runner-ecr" {
  source                    = "boldlink/ecr/aws"
  version                   = "2.0.0"
  name                      = var.name
  create_private_repository = true
  aws_ecr_repository_policy = data.aws_iam_policy_document.repository_policy.json
  other_tags                = var.tags
}
