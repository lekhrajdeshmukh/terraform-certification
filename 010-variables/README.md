# use case

- Repeated static values in the code cna create more work in the future.

- Example:
    - VPN IP needs to be whitelisted for 5 ports through Firewall Rules.

# Benefits of variables:

1. Update important values in one central place instead of searching and replacing them throughout your code, saving time and potential mistakes.

2. No need to touch the core terraform configuration file. This can avoid human mistakes while editing.



# How recommended folder structure looks like

1. Main Terraform configuration file

2. variables.tf file that defines all the variables

3. terraform.tfvars file that defines value to all the variables

4. If you have multiple variable definition file (*.tfvars files), you can manually define the file to use during command line.
    - Example:
        terrafrom plan -var-file="prod.tfvars"

5. If you have not defined a value for a variable, Terraform will ask you to input the value in CLI prompt when you run terraform plan / apply operation.

# Declaring Variable values

When variables are declared in your configuration, they can be set in a number of ways.

1. Variable Defaults.

2. Variable Definition File(*.tfvars)

3. Environment variables : Terrafrom searches the environment of its own process for environment variables named TF_VAR_ followed by the name of a declared variable.

4. Setting Variables in the Command line using switch "-var"
    - Example: terraform apply -var ami=12345

# Variable value resolution precedence, in case it is defined at multiple places

variable "instance_type" {}

1. Default value is "t2.micro"
2. Terraform.tfvars value is "t2.small"
3. Environment variable TF_VAR_instance_type = "t2.large"

- Terraform loads variables in the following order, with later sources taking precedence over earlier one:

1. Default value for variable
2. Environment variables
3. The terraform.tfvars file, if present
4. The terraform.tfvars.json file, if present
5. Any *.auto.tfvars or *.auto.tfvars.json files, processed in lexical order of their filenames.
6. Any -var and -var-file options on the command line

