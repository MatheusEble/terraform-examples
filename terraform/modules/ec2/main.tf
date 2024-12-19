resource "aws_instance" "example" {
  ami                  = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = var.subnet_id
  iam_instance_profile = aws_iam_instance_profile.instance_profile.name
  security_groups      = [var.security_group]

  tags = {
    Name = var.instance_name
  }
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = var.iam_role_name
  role = var.iam_role_name
}
