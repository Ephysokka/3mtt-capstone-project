variable "aws_region" {
  type    = string
  default = "af-south-1"
}

variable "project_name" {
  type    = string
  default = "3mtt-capstone"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_key_name" {
  type     = string
  default  = "my_ec2_key"
 }
