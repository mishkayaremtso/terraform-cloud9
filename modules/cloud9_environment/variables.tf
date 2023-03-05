variable "aws_region" {
  type    = string
  default = ""
}

variable "cloud9_instance_type" {
  type    = string
  default = ""
}

variable "cloud9_instance_name" {
  type    = string
  default = ""
}

variable "stop_time_minutes" {
  type    = number
  default = 30
}

variable "access_key" {
  type    = string
  default = ""
}

variable "secret_key" {
  type    = string
  default = ""
}

variable cloud9_user_name {
  type        = string
  default     = ""
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
  default = "10.0.1.0/24"
}