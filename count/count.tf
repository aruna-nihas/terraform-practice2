resource "aws_instances" "server" {
    count=11
    ami = var.ami_id
    instnce_names = var.aws_instance_names[count.index]
    instance_type = var.instance_type
  
}