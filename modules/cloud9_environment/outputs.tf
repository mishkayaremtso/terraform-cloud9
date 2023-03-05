output cloud9_instance_arn {
  value       = aws_cloud9_environment_ec2.cloud9_instance.arn
}

output cloud9_vpc_arn {
  value       = aws_vpc.cloud9_vpc.arn
}

output "cloud9_url" {
  value = "https://${data.aws_region.current.name}.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.cloud9_instance.id}"
}