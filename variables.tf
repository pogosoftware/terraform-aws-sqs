##########################################################################
### sqs_queue
##########################################################################
variable "create_sqs_queue" {
  default     = true
  description = "Determinate if create `sqs_queue` resources or not"
  type        = bool
}

variable "sqs_name" {
  default     = null
  description = "Required if `create_sqs_queue` is set to true. The name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name. Conflicts with `name_prefix`"
  type        = string
}

variable "use_sqs_name_prefix" {
  default     = false
  description = "Determinate to use `name_prefix` or not"
  type        = bool
}

variable "sqs_visibility_timeout_seconds" {
  default     = 30
  description = "The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30"
  type        = number
}

variable "sqs_message_retention_seconds" {
  default     = 345600
  description = "The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)"
  type        = number
}

variable "sqs_max_message_size" {
  default     = 262144
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)"
  type        = number
}

variable "sqs_delay_seconds" {
  default     = 0
  description = "The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds"
  type        = number
}

variable "sqs_receive_wait_time_seconds" {
  default     = 0
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately"
  type        = number
}

variable "sqs_policy" {
  default     = null
  description = "The JSON policy for the SQS queue"
  type        = string
}

variable "sqs_redrive_policy" {
  default     = null
  description = "The JSON policy to set up the Dead Letter Queue"
  type        = string
}

variable "sqs_redrive_allow_policy" {
  default     = null
  description = "The JSON policy to set up the Dead Letter Queue redrive permission"
  type        = string
}

variable "sqs_fifo_queue" {
  default     = false
  description = "Boolean designating a FIFO queue. If not set, it defaults to false making it standard"
  type        = bool
}

variable "sqs_content_based_deduplication" {
  default     = null
  description = "Enables content-based deduplication for FIFO queues"
  type        = string
}

variable "sqs_managed_sse_enabled" {
  default     = null
  description = "Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. Defaults to false"
  type        = bool
}

variable "sqs_kms_master_key_id" {
  default     = null
  description = "The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK"
  type        = string
}

variable "sqs_kms_data_key_reuse_period_seconds" {
  default     = 300
  description = "The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes)"
  type        = number
}

variable "sqs_deduplication_scope" {
  default     = "queue"
  description = "Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default)"
  type        = string
}

variable "sqs_fifo_throughput_limit" {
  default     = "perQueue"
  description = "Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`"
  type        = string
}

variable "sqs_tags" {
  default     = null
  description = "A map of tags to assign to the queue"
  type        = map(string)
}
