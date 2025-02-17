/*output "az_info" {
  value = data.aws_availability_zones.available
}

output "subnet_info" {
  value = aws_subnet.public
}*/

output "default_vpc" {
  value = data.aws_vpc.default
}

output "vpc_id" {
  value = aws_vpc.main.id
}