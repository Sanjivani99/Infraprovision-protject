terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  assume_role {
    duration_seconds = 3600
    session_name = "session-name"
    role_arn = var.aws_deployment_role
  }
}
}

  
