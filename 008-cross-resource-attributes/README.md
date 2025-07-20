# Cross resource attributes

## Typical challange

- It can happen that in a single terraform file, you are defining two different resources.

- However Resource-2 might be dependent on some value of Resource-1.

- Terraform allows us to reference the attribute of one resource to be used in a different resource.

- syntax:
    "${<RESOURCE_TYPE>.<RESOURCE_NAME>.<RESOURCE_ATTRIBUTE>}"

## String Interpolation in Terraform

- ${...} : This syntax indicates that Terraform will replace the expression inside the curly braces with it's calculated value.

