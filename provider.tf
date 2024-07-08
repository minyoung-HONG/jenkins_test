provider "aws" {
  region = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

variable "AWS_ACCESS_KEY_ID" {
  #description = ""
  sensitive   = true
}

  variable "AWS_SECRET_ACCESS_KEY" {
  description = ""
 sensitive   = true
}


terraform {
  cloud {
    organization = "inside-myhong"
    hostname = "app.terraform.io"
    workspaces {
      name = "vpc"
    }
  }
}
