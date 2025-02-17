module "mysql_sg" {
  source = "git::https://github.com/ravireddy6198/modules.git//sg-module?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "mysql"
  sg_description = "Created for MySQL instances in expense dev"
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value

}

module "backend_sg" {
  source = "git::https://github.com/ravireddy6198/modules.git//sg-module?ref=main"
  project_name = var.project_name
  environment = var.environment
  sg_name = "backend"
  sg_description = "Created for backend instances in expense dev"
  common_tags = var.common_tags
  vpc_id = data.aws_ssm_parameter.vpc_id.value

}

