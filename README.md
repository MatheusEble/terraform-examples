## Exemplo de Arquivo JSON Usuario IAM Terraform.

O seguinte JSON pode ser usado para configurar o sistema:

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "iam:GetPolicyVersion",
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:DeleteSubnet",
                "ec2:DescribeInstances",
                "iam:RemoveRoleFromInstanceProfile",
                "iam:CreateRole",
                "s3:CreateBucket",
                "iam:AttachRolePolicy",
                "rds:DeleteTenantDatabase",
                "ec2:AttachInternetGateway",
                "rds:CreateDBSubnetGroup",
                "iam:AddRoleToInstanceProfile",
                "ec2:DeleteRouteTable",
                "ec2:AssociateRouteTable",
                "ec2:DescribeInternetGateways",
                "s3:GetBucketObjectLockConfiguration",
                "iam:DetachRolePolicy",
                "iam:ListAttachedRolePolicies",
                "ec2:CreateRoute",
                "ec2:CreateInternetGateway",
                "ec2:RevokeSecurityGroupEgress",
                "ec2:DescribeVolumes",
                "ec2:DeleteInternetGateway",
                "iam:ListRolePolicies",
                "ec2:DescribeRouteTables",
                "rds:DeleteDBInstance",
                "iam:GetRole",
                "iam:GetPolicy",
                "s3:GetBucketWebsite",
                "ec2:CreateTags",
                "ec2:CreateRouteTable",
                "iam:DeleteRole",
                "ec2:RunInstances",
                "ec2:DetachInternetGateway",
                "ec2:DisassociateRouteTable",
                "s3:GetReplicationConfiguration",
                "ec2:DescribeInstanceCreditSpecifications",
                "ec2:DescribeSecurityGroupRules",
                "ec2:DescribeInstanceTypes",
                "ec2:DeleteVpc",
                "ec2:CreateSubnet",
                "ec2:DescribeSubnets",
                "iam:GetRolePolicy",
                "iam:CreateInstanceProfile",
                "s3:GetLifecycleConfiguration",
                "s3:GetBucketTagging",
                "rds:DescribeDBSubnetGroups",
                "ec2:DescribeInstanceAttribute",
                "s3:ListBucketVersions",
                "s3:GetBucketLogging",
                "ec2:CreateVpc",
                "iam:DeletePolicy",
                "s3:ListBucket",
                "s3:GetAccelerateConfiguration",
                "s3:GetBucketPolicy",
                "ec2:DescribeVpcAttribute",
                "ec2:ModifySubnetAttribute",
                "s3:PutEncryptionConfiguration",
                "s3:ListTagsForResource",
                "iam:ListInstanceProfilesForRole",
                "s3:GetEncryptionConfiguration",
                "iam:PassRole",
                "ec2:DescribeNetworkInterfaces",
                "s3:PutBucketTagging",
                "s3:GetBucketRequestPayment",
                "rds:CreateDBInstance",
                "ec2:CreateSecurityGroup",
                "rds:DescribeDBInstances",
                "ec2:ModifyVpcAttribute",
                "iam:CreatePolicyVersion",
                "s3:DeleteBucket",
                "s3:PutBucketVersioning",
                "iam:DeleteInstanceProfile",
                "s3:GetBucketPublicAccessBlock",
                "rds:AddTagsToResource",
                "ec2:AuthorizeSecurityGroupEgress",
                "s3:PutBucketPublicAccessBlock",
                "ec2:TerminateInstances",
                "iam:GetInstanceProfile",
                "iam:ListGroupPolicies",
                "ec2:DescribeTags",
                "ec2:DeleteRoute",
                "iam:ListRoles",
                "s3:GetBucketVersioning",
                "s3:GetBucketAcl",
                "rds:StopDBInstance",
                "ec2:DescribeSecurityGroups",
                "iam:CreatePolicy",
                "iam:ListPolicyVersions",
                "rds:ListTagsForResource",
                "ec2:DescribeVpcs",
                "ec2:DeleteSecurityGroup",
                "s3:GetBucketCORS",
                "iam:ListGroups",
                "iam:DeletePolicyVersion"
            ],
            "Resource": "*"
        }
    ]
}
```

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
