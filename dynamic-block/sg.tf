resource "aws_security_group" "allow-all" {
    name = "dynamic-block"
    description = "dynamic-block"
    dynamic "ingress" {
        for_each = var.ingress-rules
        content {
            description = ingress.value["description"]
            from_port = ingress.value["from_port"]
            to_port = ingress.value["to_port"]
            protocol = ingress.value["protocol"]
            cidr_blocks = ingress.value["cidr_blocks"]

        }
      
    }
    egress {
        description = "allow-all-incoming-traffic"
        from_port = "0"
        to_port = "0"
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "Dynamic-block"
    }
  
}