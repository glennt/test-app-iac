terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
	key    = "tfstate/terraform.tfstate"
  }
}

provider "aws" {
  region  = var.aws_region
}