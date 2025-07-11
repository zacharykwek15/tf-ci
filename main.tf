terraform {
  required_version = ">= 1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "zh-terraform.tfstate" # Change this
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "s3_tf" {

  bucket_prefix = "zh-bucket-3"
}