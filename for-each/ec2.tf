resource "aws_instance" "expense" {
    for_each = var.instance_name
    instance_type = each.value
    #ami ="ami-09c813fb71547fc4f"
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags={
        Name = each.key
        Module= each.key
        project = "expense"
    }

}

resource "aws_security_group" "allow_ssh" {

ingress  {
    from_port =22
    to_port = 22
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
}
egress  {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
tags={
    Name = "Allowing the SSH Traffic"
}
  
}