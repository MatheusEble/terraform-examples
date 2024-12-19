variable "bucket_name" {
  description = "Nome do bucket S3"
  type        = string
}

variable "environment" {
  description = "Ambiente do bucket (ex: dev, prod)"
  type        = string
}