terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.31.0"
        }
    }

    backend "s3" {
     bucket = "sanm-rs"
     key    = "dynamic-block"
     dynamodb_table = "daws-locking"
     region = "us-east-1"
  }
}
provider "aws"{
    region = "us-east-1"
}