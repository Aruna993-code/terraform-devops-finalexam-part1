variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "key_name" {
  description = "SSH key name for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "production_instance_count" {
  description = "Number of production instances"
  default     = 2
}

