module "mysql_sg" {
  source = "../sg-module"
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_name
  sg_description = var.sg_description
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc-id.value



}