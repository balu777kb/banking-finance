terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
       }
     }
   }
 provider "aws" {
   region = "us-east-2"
 }

 resource "aws_instance" "Prod-Server" {
   ami               = "ami-0f5daaa3a7fb3378b"
   instance_type     = "t2.micro"
   availability_zone = "us-east-2a"
   key_name          = "moddu"
    
   tags = {
     name = "terraform"
     }
 }
