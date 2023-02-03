provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "$HOME/.aws/credentials" # default
  profile = "default" # you may change to desired profile
  version = "~> 3.18.1"
}


terraform {
  backend "s3" {
    bucket = "ecs1993"
    key    = "state"
    region = "us-east-1"
  }
}
