output cloud9_instance_arn {
  value       = module.cloud9_environment.cloud9_instance_arn
}

output cloud9_vpc_arn {
  value       = module.cloud9_environment.cloud9_vpc_arn
}

output "cloud9_url" {
  value = module.cloud9_environment.cloud9_url
}