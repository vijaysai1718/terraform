resource "aws_instance" "expense" {   
    count = length(var.instance_type)
    instance_type = var.instance_type[count.index] == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    ami = var.ami_id
    tags = merge(var.tags,{
        Module = var.instance_type[count.index]
         Name = var.instance_type[count.index]
        } )

}

resource "aws_security_group" "allow_ssh" {
    name = "allowing all traffic"

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = var.protocol
        cidr_blocks = var.allow_cidr
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = var.allow_cidr
    }
      tags = merge(var.tags,{

         Name = "allowing all traffic"
        } )

}