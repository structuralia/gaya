    terraform {
      required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "5.50.0"
        }
      }
    }
    
    provider "aws" {
        region = "eu-west-1"
        # allowed_account_ids = ["269433206282"]
        # profile = "pharos"
    }