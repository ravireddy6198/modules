module "vpc" {
  source = "../vpc-module"
  cidr_block = var.cidr_block
  project_name = var.project_name
  environment = var.environment
  common_tags =  var.common_tags
  vpc_tags = var.vpc_tags
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs
  is_peering_required = true
}