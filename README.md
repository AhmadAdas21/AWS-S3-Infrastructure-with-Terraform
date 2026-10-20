# AWS S3 Infrastructure with Terraform

A simple Infrastructure as Code (IaC) project that provisions and manages a secure Amazon S3 bucket using **HashiCorp Terraform**.

The project demonstrates core Terraform concepts, AWS resource management, security configuration, and infrastructure automation.

## Technologies Used

- **Terraform** – Infrastructure as Code
- **AWS S3** – Cloud object storage
- **AWS CLI** – AWS authentication and management
- **HCL** – Terraform configuration language
- **Git & GitHub** – Version control

## Features

- Automated S3 bucket provisioning
- S3 Block Public Access configuration
- Bucket versioning enabled
- Server-side encryption using SSE-S3 (AES-256)
- Lifecycle rule to abort incomplete multipart uploads after 7 days
- Configurable AWS Region, environment, and bucket prefix
- Terraform outputs for retrieving bucket information

## Project Structure

```text
AWS-S3-Infrastructure-with-Terraform/
├── main.tf          # S3 bucket, versioning, and security
├── providers.tf     # Terraform and AWS provider configuration
├── variables.tf     # Input variables
├── output.tf        # Terraform outputs
├── encryption.tf    # S3 encryption configuration
├── lifecycle.tf     # S3 lifecycle management
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

## Prerequisites

Before running this project, make sure you have:

- An AWS account
- Terraform CLI installed
- AWS CLI installed and configured
- AWS credentials with the required S3 permissions

## Deployment

**1. Clone the repository**

```bash
git clone https://github.com/AhmadAdas21/AWS-S3-Infrastructure-with-Terraform.git
cd AWS-S3-Infrastructure-with-Terraform
```

**2. Initialize Terraform**

```bash
terraform init
```

**3. Validate the configuration**

```bash
terraform fmt -check
terraform validate
```

**4. Preview infrastructure changes**

```bash
terraform plan
```

**5. Deploy the infrastructure**

```bash
terraform apply
```

Review the execution plan and confirm by typing `yes`.

**6. View the bucket name**

```bash
terraform output bucket_name
```

## Configuration

The following variables are defined in `variables.tf`:

| Variable | Default Value | Description |
|---|---|---|
| `aws_region` | `eu-central-1` | AWS deployment region |
| `environment` | `Development` | Deployment environment |
| `bucket_prefix` | `terraform-s3-learning-` | Prefix for the generated S3 bucket name |

Variable values can be overridden using Terraform CLI options or appropriate variable files.

## Security

The project applies several basic security practices:

- Blocks public access to the S3 bucket
- Enables bucket versioning
- Configures SSE-S3 encryption
- Uses AWS credentials through the standard AWS authentication mechanisms
- Excludes Terraform state files from version control

