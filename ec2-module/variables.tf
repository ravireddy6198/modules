variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "sg_id" {
  
}

variable "instance_type" {
  
  validation {
    condition = contains(["t2.micro","t3.micro"], var.instance_type)
    error_message = "please provide a valid instance type give : t2.micro or t3.micro"
  }

}

variable "tags" {
  default = {}  #optional
}