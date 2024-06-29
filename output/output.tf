resource "aws_instance" "server" {
    ami = "ami-0b4f379183e5706b9"
    instance_type = "t2.micro"
  
}
output "instance_info" {
    value = aws_instance.server
  
}