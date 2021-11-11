terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.64.2"
    }
  }
}

variable "name" {
  type = string
}

variable "key" {
  type = string
}

variable "path" {
  type = string
}

resource "aws_key_pair" "these_keys" {
  name       = var.name
  public_key = var.key
}
