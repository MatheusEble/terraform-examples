variable "ami_id" {
  description = "ID da imagem AMI para a instância EC2"
  default = "ami-0e2c8caa4b6378d8c"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

variable "access_key" {
  description = "chave"
  default     = string
}

variable "secret_key" {
  description = "chave"
  default     = string
}

variable "aws_region" {
  description = "Região AWS para os recursos"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "environment" {
  description = "Ambiente do bucket (ex: dev, prod)"
  type        = string
  default     = "dev"
}

