# AWS Multi-Environment Infrastructure with Terraform

Production-grade AWS infrastructure automation using Terraform, implementing multi-environment deployment with CI/CD pipelines.

## 🏗️ Architecture Overview

This project demonstrates infrastructure-as-code best practices for managing AWS resources across multiple environments (dev, stage, prod) with automated deployment pipelines.

### Key Features

- **Multi-Environment Setup**: Isolated dev, staging, and production environments
- **Reusable Modules**: Custom VPC module with standardized networking
- **CI/CD Automation**: GitHub Actions workflows with Terraform plan/apply
- **Secure Authentication**: OIDC integration for GitHub Actions → AWS (no static credentials)
- **Remote State Management**: S3 backend with DynamoDB state locking
- **IAM Best Practices**: Least-privilege policies with environment-specific roles

## 📁 Project Structure
```
.
├── .github/workflows/          # GitHub Actions CI/CD pipelines
│   ├── deploy-dev.yml         # Dev environment deployment
│   ├── promote-stage.yml      # Stage promotion workflow
│   └── promote-prod.yml       # Production promotion workflow
├── environments/              # Environment-specific configurations
│   ├── dev/
│   ├── stage/
│   └── prod/
├── modules/                   # Reusable Terraform modules
│   └── vpc/                  # VPC module with public/private subnets
├── main.tf                   # Root module configuration
├── provider.tf              # AWS provider setup
└── variables.tf             # Input variables
```

## 🚀 Infrastructure Components

### Network Architecture
- **VPC Design**: Multi-AZ setup with public and private subnets
- **Routing**: Internet Gateway for public subnets, NAT Gateway for private subnets
- **Security**: Network ACLs and Security Groups with least-privilege access
- **Tagging Strategy**: Consistent resource tagging for cost allocation and management

### CI/CD Pipeline
- **Automated Terraform Workflows**: Plan on PR, Apply on merge to main
- **OIDC Authentication**: Secure, temporary credentials via GitHub OIDC provider
- **State Management**: Remote state with locking to prevent concurrent modifications
- **Environment Promotion**: Controlled promotion from dev → stage → prod

## 🔐 Security Features

- **No Static Credentials**: OIDC-based authentication eliminates need for long-lived AWS keys
- **IAM Roles**: Environment-specific roles with minimal required permissions
- **State Encryption**: S3 backend with encryption at rest
- **Trust Policies**: Restricted to specific GitHub repositories and branches

## 🛠️ Technologies Used

- **Infrastructure**: AWS (VPC, IAM, S3, DynamoDB)
- **IaC Tool**: Terraform
- **CI/CD**: GitHub Actions
- **Version Control**: Git
- **Authentication**: OpenID Connect (OIDC)

## 📫 Contact

**Ankush Katoch**  
Senior Infrastructure Engineer | AWS | Terraform | DevOps

---

*This repository showcases production-ready infrastructure automation practices developed through hands-on implementation and real-world problem-solving.*
