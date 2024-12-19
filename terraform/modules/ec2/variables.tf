variable "ami_id" {
  description = "ID da imagem AMI"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID da sub-rede onde a instância será lançada"
}

variable "security_group" {
  description = "ID do security group para a instância"
}