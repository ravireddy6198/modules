variable "cidr_block" {
  
}

variable "enable_dns_hostnames" {
  default = true
}

variable "project_name" {
  
}

variable "environment" {
  
}

variable "common_tags" {
    type = map
  default = {}
}

variable "vpc_tags" {
  default = {}
}

 variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
  type = list 
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "please provide valid subnet CIDR which are in the VPC CIDR range"
  }
} 

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
  type = list 
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "please provide valid subnet CIDR which are in the VPC CIDR range"
  }
} 

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidrs" {
  type = list 
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "please provide valid subnet CIDR which are in the VPC CIDR range"
  }
} 

variable "database_subnet_tags" {
  default = {}
}

variable "is_peering_required" {
  default = false
}
