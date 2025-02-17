module "ec2" {
  source = "../ec2-module"
  sg_id = "sg-03bc2d988dc30d801"
  instance_type = "t2.micro"
}

output "public_ip" {
  value = module.ec2.public_ip
}