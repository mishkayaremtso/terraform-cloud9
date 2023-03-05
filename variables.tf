variable "aws_region" {}

variable "vpc_name" {}

variable "availability_zone" {}

variable "cloud9_instance_type" {}

variable "cloud9_instance_name" {}

variable "stop_time_minutes" {}

variable "access_key" {}

variable "secret_key" {}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "cloud9_user_name" {}
