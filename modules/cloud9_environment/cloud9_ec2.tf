resource "aws_cloud9_environment_ec2" "cloud9_instance" {
  name                        = var.cloud9_instance_name
  subnet_id                   = aws_subnet.cloud9_private_subnet.id
  instance_type               = var.cloud9_instance_type
  automatic_stop_time_minutes = var.stop_time_minutes

  tags = {
    name = "Cloud9-instance"
    Module_name = "cloud9_environment"
  }
}

resource "aws_cloud9_environment_membership" "cloud9_user" {
    environment_id = aws_cloud9_environment_ec2.cloud9_instance.id
    permissions = "read-write"
    user_arn = aws_iam_user.cloud9_user.arn
}