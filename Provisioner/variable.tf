variable "instance_type" {

    default = "t3.micro"
  
}

variable "tags" {

    default = {
        Name = "Expense-Provisioners"
        module = "provisioner"
        project = "dummy"
        terraform =true
    }
  
}
variable "ami_id" {

    default = "ami-09c813fb71547fc4f"
  
}