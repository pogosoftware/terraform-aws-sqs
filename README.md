# terraform-aws-sqs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sqs_queue"></a> [sqs\_queue](#module\_sqs\_queue) | ./modules/sqs_queue | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_sqs_queue"></a> [create\_sqs\_queue](#input\_create\_sqs\_queue) | Determinate if create `sqs_queue` resources or not | `bool` | `true` | no |
| <a name="input_sqs_content_based_deduplication"></a> [sqs\_content\_based\_deduplication](#input\_sqs\_content\_based\_deduplication) | Enables content-based deduplication for FIFO queues | `string` | `null` | no |
| <a name="input_sqs_deduplication_scope"></a> [sqs\_deduplication\_scope](#input\_sqs\_deduplication\_scope) | Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default) | `string` | `"queue"` | no |
| <a name="input_sqs_delay_seconds"></a> [sqs\_delay\_seconds](#input\_sqs\_delay\_seconds) | The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds | `number` | `0` | no |
| <a name="input_sqs_fifo_queue"></a> [sqs\_fifo\_queue](#input\_sqs\_fifo\_queue) | Boolean designating a FIFO queue. If not set, it defaults to false making it standard | `bool` | `false` | no |
| <a name="input_sqs_fifo_throughput_limit"></a> [sqs\_fifo\_throughput\_limit](#input\_sqs\_fifo\_throughput\_limit) | Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId` | `string` | `"perQueue"` | no |
| <a name="input_sqs_kms_data_key_reuse_period_seconds"></a> [sqs\_kms\_data\_key\_reuse\_period\_seconds](#input\_sqs\_kms\_data\_key\_reuse\_period\_seconds) | The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes) | `number` | `300` | no |
| <a name="input_sqs_kms_master_key_id"></a> [sqs\_kms\_master\_key\_id](#input\_sqs\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK | `string` | `null` | no |
| <a name="input_sqs_managed_sse_enabled"></a> [sqs\_managed\_sse\_enabled](#input\_sqs\_managed\_sse\_enabled) | Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. Defaults to false | `bool` | `null` | no |
| <a name="input_sqs_max_message_size"></a> [sqs\_max\_message\_size](#input\_sqs\_max\_message\_size) | The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB) | `number` | `262144` | no |
| <a name="input_sqs_message_retention_seconds"></a> [sqs\_message\_retention\_seconds](#input\_sqs\_message\_retention\_seconds) | The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days) | `number` | `345600` | no |
| <a name="input_sqs_name"></a> [sqs\_name](#input\_sqs\_name) | Required if `create_sqs_queue` is set to true. The name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name. Conflicts with `name_prefix` | `string` | `null` | no |
| <a name="input_sqs_policy"></a> [sqs\_policy](#input\_sqs\_policy) | The JSON policy for the SQS queue | `string` | `null` | no |
| <a name="input_sqs_receive_wait_time_seconds"></a> [sqs\_receive\_wait\_time\_seconds](#input\_sqs\_receive\_wait\_time\_seconds) | The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately | `number` | `0` | no |
| <a name="input_sqs_redrive_allow_policy"></a> [sqs\_redrive\_allow\_policy](#input\_sqs\_redrive\_allow\_policy) | The JSON policy to set up the Dead Letter Queue redrive permission | `string` | `null` | no |
| <a name="input_sqs_redrive_policy"></a> [sqs\_redrive\_policy](#input\_sqs\_redrive\_policy) | The JSON policy to set up the Dead Letter Queue | `string` | `null` | no |
| <a name="input_sqs_tags"></a> [sqs\_tags](#input\_sqs\_tags) | A map of tags to assign to the queue | `map(string)` | `null` | no |
| <a name="input_sqs_visibility_timeout_seconds"></a> [sqs\_visibility\_timeout\_seconds](#input\_sqs\_visibility\_timeout\_seconds) | The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30 | `number` | `30` | no |
| <a name="input_use_sqs_name_prefix"></a> [use\_sqs\_name\_prefix](#input\_use\_sqs\_name\_prefix) | Determinate to use `name_prefix` or not | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_arn"></a> [sqs\_arn](#output\_sqs\_arn) | The ARN of the SQS queue |
| <a name="output_sqs_id"></a> [sqs\_id](#output\_sqs\_id) | The URL for the created Amazon SQS queue |
| <a name="output_sqs_name"></a> [sqs\_name](#output\_sqs\_name) | The NAME of the SQS queue |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->