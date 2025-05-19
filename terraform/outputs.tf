output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_az1_id" {
  description = "Public Subnet AZ1 ID"
  value       = aws_subnet.public_az1.id
}

output "public_subnet_az2_id" {
  description = "Public Subnet AZ2 ID"
  value       = aws_subnet.public_az2.id
}

output "private_subnet_az1_id" {
  description = "Private Subnet AZ1 ID"
  value       = aws_subnet.private_az1.id
}

output "private_subnet_az2_id" {
  description = "Private Subnet AZ2 ID"
  value       = aws_subnet.private_az2.id
}

output "alb_dns_name" {
  description = "ALB DNS Name"
  value       = aws_lb.web_alb.dns_name
}

output "rds_endpoint" {
  description = "RDS Endpoint"
  value       = aws_db_instance.mysql.endpoint
}

output "rds_db_name" {
  description = "RDS DB Name"
  value       = aws_db_instance.mysql.db_name
}

output "rds_port" {
  description = "RDS Port"
  value       = aws_db_instance.mysql.port
}
