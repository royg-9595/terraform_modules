# terraform-modules/ec2-instance/main.tf
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of the instance"
  type        = string
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
}
