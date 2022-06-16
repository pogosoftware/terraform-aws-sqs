locals {
  sqs_name        = var.use_sqs_name_prefix ? null : var.sqs_name
  sqs_name_prefix = var.use_sqs_name_prefix ? format("%s-", var.sqs_name) : null
}
