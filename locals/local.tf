locals {
  instance_type = var.IsProd ? "t2.micro" : "t3.micro" 
}