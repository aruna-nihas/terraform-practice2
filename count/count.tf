resource "aws_instance" "server" {
    count=11
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql" ||var.instance_names[count.index] ? "t3.micro" : "t2.micro"
    tags = {
      Name = web
    }
  
}