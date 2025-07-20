# State file

- Terraform stores the state of the infrastructure that is being created from the TF files.

- This state allows terraform to map real world resource to your existing configuration.

## Desired state

- Terraform's primary function is to create, modify, and destroy infrastructure resources to match the desired state described in a Terraform configuration.

## Current state

- Current state is the actual state of a resource that is currently deployed.

## Important point

- Terraform tried to ensure that the deployed infrastructure is based on the desired state.

- If there is a difference between the two, terraform plan represents a description of the changes necessary to achieve the desired state.

## Explicit Setting Provider Version

- During terraform init, if version argument is not specified, the most recent provider will be downloaded during initialization.

- For production use, you should constrain the acceptable provider version via configuration, to ensure that new version with breaking changes will not be automatically installed.

- Example:
    terraform {
        required_providers {
            aws = {
                source = "hashicorp/aws"
                version = "~> 3.0"
            }
        }
    }

    provider "aws" {
        region = "us-east-1"
    }


## Dependency Lock File

- Terraform dependency lock file allows us to a specific version of the provider.

- If a particular provider already has a selection recorded in the lock file, Terraform will always re-select that version for installation, even if a newer version has become available.

- You can upgrade that behaviour by adding the -upgrade option when you run terrafrom init.


## upgrade the resource provider from current version to higher version

- Due to presence of .terraform.lock file it doesn't allow to execute command "terrafrom init"

- To upgrade the resource library to higher version we need to execute command "terrafrom init -upgrade"

## Terraform Refresh command

- Terraform can create an infrastructure based on configuration you specified.

- It can happen that the infrastructure gets modified manually.

- In this case, terraform must aware about the manual changes and for that we can use command "terraform refresh"

- This command basically update the terraform state file and align it with current infrastructure configuration.

## Point to note:

- You should not typically need to use this command, because Terraform automatically performs the same refreshing actions as a part of creating a plan in both the terraform plan and terraform apply commands.

- The terraform refresh command is deprecated in newer version of terraform.

- The -refresh-only option for terraform plan and terraform apply was introduced in Terraform v0.15.4

