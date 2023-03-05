module "cloud9_environment" {
  source               = "./modules/cloud9_environment"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  cloud9_instance_name = var.cloud9_instance_name
  cloud9_instance_type = var.cloud9_instance_type
  stop_time_minutes    = var.stop_time_minutes
  cloud9_user_name     = var.cloud9_user_name
}
