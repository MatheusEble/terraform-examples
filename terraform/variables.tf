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

variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to be allocated for the RDS instance"
  type        = number
  default     = 20
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "8.0"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydb"
}

variable "db_username" {
  description = "The database username"
  type        = string
}

variable "db_password" {
  description = "The database password"
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The DB parameter group name"
  type        = string
  default     = "default.mysql8.0"
}

variable "skip_final_snapshot" {
  description = "Skip the final snapshot when deleting the DB instance"
  type        = bool
  default     = true
}

variable "cidr_blocks" {
  description = "CIDR blocks for security group ingress"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
