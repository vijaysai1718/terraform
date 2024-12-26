# variable realted to the ec2-instance
variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {

    type= string
    default = "t3.micro"
}

variable "tags" {

    default = {
        Name = "expense-using-variables"
        Terraform = true
    }

    
}

variable "secuirty_group_name" {

    type= string
    default = "allowing_all_traffic"
  }
# security group related variables listed below 
variable "sg_name" {
     default = "allow_ssh"
    
  }
variable "description" {
    
    default = "allowing the ssh traffic to the server"
  }

variable "ssh_port" {
    default ="22"
}

variable "cidr_block" {
    default = ["0.0.0.0/16"]
  
}

variable "portocol" {
    default = "tcp"
  
}

variable "security_group" {

    default = {
        Name = "security-group-name"
        createdby = "Vijaysai"

    }
  
}