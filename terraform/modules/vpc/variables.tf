variable "cidr_block" {
  description = "O CIDR block da VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_1_cidr" {
  description = "CIDR da sub-rede pública 1"
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR da sub-rede pública 2"
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR da sub-rede privada 1"
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR da sub-rede privada 2"
  default     = "10.0.4.0/24"
}

variable "az_1" {
  description = "Zona de disponibilidade para a primeira sub-rede"
  default     = "us-east-1a"
}

variable "az_2" {
  description = "Zona de disponibilidade para a segunda sub-rede"
  default     = "us-east-1b"
}