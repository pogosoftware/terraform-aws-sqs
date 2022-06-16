output "sqs_id" {
  description = "The URL for the created Amazon SQS queue"
  value       = try(module.sqs_queue[0].id, "")
}

output "sqs_arn" {
  description = "The ARN of the SQS queue"
  value       = try(module.sqs_queue[0].arn, "")
}

output "sqs_name" {
  description = "The NAME of the SQS queue"
  value       = try(module.sqs_queue[0].name, "")
}
