resource "aws_instance" "expense" {
    for_each = var.instance_name# each.key and each.value
   ami= var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id] # replace with you SG ID
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}


resource "aws_security_group" "allow_ssh" {
    name =  var.secuirty_group_name

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        cidr_blocks = var.cidr_block
        protocol = "tcp"
            }

   egress {
        from_port = "0"
        to_port = "0"
        cidr_blocks = var.cidr_block
        protocol = "-1"
    }
    tags = var.common_tags
}