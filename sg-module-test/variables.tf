variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "sg_name" {
    default = "mysql"
}

variable "sg_description" {
  default = "Created for MySQL instances in expense dev"
}

variable "common_tags" {
  type = map
  default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
  }
}



