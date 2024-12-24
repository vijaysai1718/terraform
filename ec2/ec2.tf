resource "aws_instance" "expense" {
instance_type = "t3.micro"
ami = "ami-09c813fb71547fc4f"
vpc_security_group_ids = []

tags = {
    Name = "db"
}
}

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






































