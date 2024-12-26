resource "aws_instance" "expense" {

    ami= var.ami_id
    instance_type= var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = var.tags
}

resource "aws_security_group" "allow_ssh" {
    name =  var.secuirty_group_name

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        cidr_blocks = var.cidr_block
        protocol = var.portocol
            }

   egress {
        from_port = "0"
        to_port = "0"
        cidr_blocks = var.cidr_block
        protocol = "-1"
    }
    tags = var.security_group
}