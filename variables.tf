
variable "key_name" {
  type    = string
  default = "terraform-key"
}

variable "public_subnet_id" {
  type    = string
  default = "subnet-0112f24e95ce07725"
}

variable "private_subnet_id" {
  type    = string
  default = "subnet-0bedab53c6817cec0"
}

variable "private_subnet_2_id" {
  type    = string
  default = "subnet-064a6954866b3b454"
}

variable "aws_iam_instance_profile" {
  type    = string
  default = "s3_profile"
}

variable "vpc_id" {
  type    = string
  default = "vpc-044c185438541446b"
}
