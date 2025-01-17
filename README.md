## Terraform

### Terraform Init

Downloads and installs the required provider plugins (e.g., AWS, Azure, Google Cloud). 
Prepares the directory for other Terraform commands. 

### Terraform Plan 

Examines the Terraform configuration and the current state of infrastructure.
Predicts the changes Terraform will make to match the desired state.
Displays the proposed changes (add, update, destroy) without applying them.

### Terraform Apply 

Executes the changes outlined in the execution plan.
Provisions, updates, or destroys infrastructure resources.

### Terraform Destory 

Removes the resources defined in the configuration from the cloud or on-prem environment.
Updates the Terraform state file to reflect the deletion.
