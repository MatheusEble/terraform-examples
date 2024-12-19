variable "ami_id" {
  description = "ID da imagem AMI para a instância EC2"
  type        = string
}

variable "instance_name" {
  description = "Nome da instância EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instância EC2"
  type        = string
  default     = "t2.micro"
}

variable "access_key" {
  description = "chave"
  type        = string
}

variable "secret_key" {
  description = "chave"
  type        =  string
}

variable "aws_region" {
  description = "Região AWS para os recursos"
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

variable "role_name" {
  description = "Nome da role IAM"
  type        = string
}