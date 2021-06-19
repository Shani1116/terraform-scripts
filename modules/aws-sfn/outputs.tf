output "id" {
  description = "The ARN of the state machine."
  value       = aws_sfn_state_machine.sfn_state_machine.id
}

output "arn" {
  description = "The ARN of the state machine."
  value       = aws_sfn_state_machine.sfn_state_machine.arn
}

output "status" {
  description = "The current status of the state machine"
  value       = aws_sfn_state_machine.sfn_state_machine.status
}