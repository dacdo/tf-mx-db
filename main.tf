
resource "aws_instance" "public-vm" {
  subnet_id                   = var.public_subnet_id
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  ami                         = data.aws_ami.amzlinux.id
  associate_public_ip_address = true
  user_data                   = file("apache-install.sh")
  vpc_security_group_ids      = [aws_security_group.sg-dynamic.id]

  tags = {
    Name = "tf-public-vm"
  }

  # iam_instance_profile = aws_iam_instance_profile.test_profile.name
  iam_instance_profile = var.aws_iam_instance_profile

}


resource "aws_instance" "private-vm" {
  subnet_id                   = var.private_subnet_id
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  ami                         = data.aws_ami.amzlinux.id
  associate_public_ip_address = false
  vpc_security_group_ids      = [aws_security_group.sg-dynamic.id]

  tags = {
    Name = "tf-private-vm"
  }

  # iam_instance_profile = aws_iam_instance_profile.test_profile.name
  iam_instance_profile = var.aws_iam_instance_profile

}

resource "aws_instance" "private-vm2" {
  subnet_id                   = var.private_subnet_2_id
  instance_type               = "t2.micro"
  key_name                    = var.key_name
  ami                         = data.aws_ami.amzlinux.id
  associate_public_ip_address = false
  vpc_security_group_ids      = [aws_security_group.sg-dynamic.id]

  tags = {
    Name = "tf-private-vm"
  }

  # iam_instance_profile = aws_iam_instance_profile.test_profile.name
  iam_instance_profile = var.aws_iam_instance_profile

}
