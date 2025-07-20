# Data Types

- Data type refers to the type of value.

- Depending on the requirement, you can use wide variety of values in Terraform configuration.

- Example: string, number, bool, list, set, map, null

# Restricting variable value to data type

- We can restrict the value of a variable to a data type/

- Example:
    - Only numbers should be allowed in AWS usernames.

# Data Type : List

- It allows us to store collection of values for a single variable / argument.

- Represented by a pair of square brackets containing a comma-separated sequence of values, like ["a", "15", "true"]

- It is useful when multiple values needs to be added for a specific argument.

# Specify the Type of Values in List

- We can also specify the type of values expected in a list.

- Example:
    variable "my-list" {
        type = list(number)
        default = ["1","2","3"]
    }

# Map Data Type

- A map data type represents a collection of key-value pair elements.

- Example:

    variable "instance_tags" {
        type = map 
        default = {
            Name = "app-server"
            Environment = "development"
            Team = "payments"
        }
    }