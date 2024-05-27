resource "aws_security_group" "allow_tls" {
name = "allowing_tls"
description = "creating the security group for testing"
  #terraform block
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }
tags  = {
    name = "allow_tls"
    createdby = "vijaysai"
}

}

resource "aws_instance" "db" {
    ami  = "ami-090252cbe067a9e58"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    instance_type = "t3.micro"

    tags = {
        name="db"
    }
  
}