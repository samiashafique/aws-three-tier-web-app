output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "app_subnet_ids" {
  description = "The IDs of the application subnets"
  value       = [for subnet in aws_subnet.app : subnet.id]
}

output "db_subnet_ids" {
  description = "The IDs of the database subnets"
  value       = [for subnet in aws_subnet.db : subnet.id]
}
