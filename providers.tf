    terraform {
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "5.50.0"
        }
      }
    }
    
    provider "aws" {
        region = var.region
        # allowed_account_ids = ["269433206282"]
        # profile = "pharos"
    }
