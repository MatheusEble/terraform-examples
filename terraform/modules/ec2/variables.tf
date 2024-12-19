variable "ami_id" {
  description = "ID da imagem AMI"
}

variable "instance_name" {
  description = "Nome da instância EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID da sub-rede onde a instância será lançada"
}

variable "security_group" {
  description = "ID do security group para a instância"
}

variable "iam_role_name" {
  description = "Nome do IAM Role"
  type        = string
}