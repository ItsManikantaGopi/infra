terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
  backend "s3" {
    bucket = "decor-terraform"
    key    = "terraform/aws-services.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

provider "github" {
  owner = "itsManikantaGopi"
}