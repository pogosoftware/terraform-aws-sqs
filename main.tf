module "sqs_queue" {
  source = "./modules/sqs_queue"

  count = var.create_sqs_queue ? 1 : 0

  name                              = local.sqs_name
  name_prefix                       = local.sqs_name_prefix
  visibility_timeout_seconds        = var.sqs_visibility_timeout_seconds
  message_retention_seconds         = var.sqs_message_retention_seconds
  max_message_size                  = var.sqs_max_message_size
  delay_seconds                     = var.sqs_delay_seconds
  receive_wait_time_seconds         = var.sqs_receive_wait_time_seconds
  policy                            = var.sqs_policy
  redrive_policy                    = var.sqs_redrive_policy
  redrive_allow_policy              = var.sqs_redrive_allow_policy
  fifo_queue                        = var.sqs_fifo_queue
  content_based_deduplication       = var.sqs_content_based_deduplication
  sqs_managed_sse_enabled           = var.sqs_managed_sse_enabled
  kms_master_key_id                 = var.sqs_kms_master_key_id
  kms_data_key_reuse_period_seconds = var.sqs_kms_data_key_reuse_period_seconds
  deduplication_scope               = var.sqs_deduplication_scope
  fifo_throughput_limit             = var.sqs_fifo_throughput_limit
  tags                              = var.sqs_tags
}
