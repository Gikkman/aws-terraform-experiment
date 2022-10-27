terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
  token = var.session_token
}

variable "access_key" {
  type = string
  description = "The AWS_ACCESS_KEY_ID from the AWS console"
  sensitive = true
}

variable "secret_key" {
  type = string
  description = "The AWS_SECRET_ACCESS_KEY from the AWS console"
  sensitive = true
}

variable "session_token" {
  type = string
  description = "The AWS_SESSION_TOKEN from the AWS console"
  sensitive = true
}