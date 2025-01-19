variable "instance_name" {
    type= map
    default = {
        "db" = "t3.small"
        "frontend" = "t3.micro"
        "backend" = "t3.micro"
    }
}

variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "zone_id" {
    default = "Z05550032645OFC1SOEB5"
}

variable "common_tags" {
    type= map
    default = {
        project ="Expense"
        Terraform = true
    }
}

variable "domain_name" {
    default = "vijaysai.online"
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

