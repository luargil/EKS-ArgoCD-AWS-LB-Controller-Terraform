terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.31.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
  backend "s3" {
    bucket            = "kiuwan-terraform-state"
    key               = "eks-cluster-test/terraform.tfstate"
    region            = "eu-west-1"
  }
}

provider "aws" {
  region = var.aws-region

  default_tags {
    tags = {
      Project     = "Talos Kubernetes Cluster"
      Provisioner = "Terraform"
      Environment = "Testing"
    }
  }
}
