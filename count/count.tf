resource "aws_instance" "server" {
    count = 11
    ami = var.ami_id
    instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "mysql"  ? "t3.micro" : "t2.micro"
    tags = {
      Name = var.instance_names[count.index]
    }
  
}
resource "aws_route53_record" "www" {
  zone_id = var.zone-id
  name    = "${var.instance_names[count.index]}.${var.domain-name}"
  type    = "A"
  ttl     = 1
  records = [var.instance_names[count.index].server == "web" ? aws_instance.sever[count.index].public_ip : aws_instance.server[count.index].private_ip]
}