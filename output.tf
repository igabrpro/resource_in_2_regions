output "example_a_id" {
  description = "ID of the EC2"
  value       = resource.aws_instance.example_a.id
}

output "example_a_zone" {
  description = "ID of the EC2"
  value       = resource.aws_instance.example_a.availability_zone
}

output "example_b_id" {
  description = "ID of the EC2"
  value       = resource.aws_instance.example_b.id
}

output "example_b_zone" {
  description = "ID of the EC2"
  value       = resource.aws_instance.example_b.availability_zone
}