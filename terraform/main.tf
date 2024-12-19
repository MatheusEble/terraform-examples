provider "aws" {
  region = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source        = "./modules/ec2"
  instance_name    = var.instance_name
  ami_id        = var.ami_id
  instance_type = var.instance_type
  iam_role_name = module.iam.role_name
  subnet_id     = module.vpc.public_subnet_1_id
  security_group = module.security_group.security_group_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  environment = var.environment
}

# Módulo IAM Role
module "iam" {
  source        = "./modules/iam"
  bucket_name   = module.s3.bucket_name
  role_name     = var.role_name
  policy_name   = "s3-access-policy"
}