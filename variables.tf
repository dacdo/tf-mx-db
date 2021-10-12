
variable "key_name" {
  type    = string
  default = "terraform-key"
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-049915106dbeb2a0e"
}

variable "private_subnet_id" {
  type    = string
  default = "subnet-03c90ef882e50e755"
}

variable "aws_iam_instance_profile" {
  type    = string
  default = "test_profile"
}

variable "vpc_id" {
  type    = string
  default = "vpc-0035b026d6a897b5b"
}
