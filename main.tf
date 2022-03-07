terraform {
  cloud {
    organization = "Daffodil"

    workspaces {
      name = "terraform-workspace-rbac"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=3.69.0"
    }
  }
}

provider "aws" {
  region = var.region
}