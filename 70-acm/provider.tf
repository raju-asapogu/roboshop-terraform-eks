terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.56.0"
    }
  }
  
  backend "s3" {
    bucket = "jdevops-remote-state-86s-dev"
    key    = "roboshop-eks-acm"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }

}

provider "aws" {
  region = "us-east-1"
}