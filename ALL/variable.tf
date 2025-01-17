variable "instance_type"{
    type= list
    default = ["db","frontend","backend"]
}

variable ami_id {
    type = string
    default = "ami-09c813fb71547fc4f"

}

variable tags{
    type = map 
    default = {
        Environment = "Expense"
        createdby = "vijaysai"
        terraform = "true"
    }
}

variable from_port{
    default = 22
}

variable to_port {
    default = 22
}

variable allow_cidr {
    type =list
    default = ["0.0.0.0/0"]
}

variable "protocol" {
    default ="tcp"
}