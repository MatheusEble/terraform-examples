# Terraform com Módulos

Este projeto cria uma infraestrutura na AWS utilizando módulos do Terraform. Ele cria:

- Uma VPC com duas sub-redes públicas e duas sub-redes privadas.
- Uma instância EC2 na sub-rede pública 1.
- Um Security Group permitindo SSH, HTTP e HTTPS.
- Um Bucket S3 com versionamento habilitado e sem acesso público.
- Um rds com rede privada.

## Como Usar

1. Clone este repositório.
2. Defina as variáveis no arquivo `terraform.tfvars`.
3. Execute os comandos Terraform:

   ```bash
   terraform init
   terraform plan
   terraform apply
