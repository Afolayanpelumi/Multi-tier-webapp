variable "project_name" {
  description = "Name prefix for all resources"
  type        = string
  default     = "multi-tier-app"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_az1" {
  description = "CIDR block for public subnet in AZ1"
  type        = string
  default     = "10.0.10.0/24"
}

variable "public_subnet_cidr_az2" {
  description = "CIDR block for public subnet in AZ2"
  type        = string
  default     = "10.0.11.0/24"
}

variable "private_subnet_cidr_az1" {
  description = "CIDR block for private subnet in AZ1"
  type        = string
  default     = "10.0.12.0/24"
}

variable "private_subnet_cidr_az2" {
  description = "CIDR block for private subnet in AZ2"
  type        = string
  default     = "10.0.13.0/24"
}

variable "availability_zone_az1" {
  description = "Availability Zone 1"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_az2" {
  description = "Availability Zone 2"
  type        = string
  default     = "us-east-1b"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "db_username" {
  description = "RDS MySQL username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "RDS MySQL password"
  type        = string
  sensitive   = true
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 - us-east-1 (Virginia)
}
