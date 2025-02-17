resource "aws_instance" "main" {
  ami =  var.ami_id
  vpc_security_group_ids = [var.sg_id]
  instance_type = local.instance_type
  tags = var.tags
}