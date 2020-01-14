resource "aws_route53_zone" "route53_zone" {
  name          = var.name
  comment       = var.comment
  force_destroy = var.force_destroy
  tags          = var.tags
  dynamic "vpc" {
    for_each = length(keys(var.vpc)) == 0 ? [] : [var.vpc]
    content {
      vpc_id     = vpc.value.vpc_id
      vpc_region = lookup(vpc.value, "vpc_region", null)
    }
  }
}
