variable "ami_id" {
    default = "ami-0b4f379183e5706b9"
  
}
variable "aws_instance_names" {
    default = ["cart","mongodb","catalogue","user","dispatch","payments","radish","mysql","rabbitmq","shipping","web"]
  
}
variable "instance_type" {
    default = "t2.micro"
  
}