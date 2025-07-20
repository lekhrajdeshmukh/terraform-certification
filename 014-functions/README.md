# Function  in Terraform

- Function is a block of code which perform a specific task

# Terraform console

- Terraform Console provides an interactive environment specifically designed to 
test functions and experiment with expressions before integrating them into your main code.

- Example:
    > terraform console
    > max(10,20,30)
    30

# Functions in Terraform

- Terraform has wide variety of functions available to acheive different set of use-cases.

- Functions are grouped into categories. Some of these include:

    - Numeric Categories:
        - abs, ceil, floor, max, min

    - String Functions:
        - concat, replace, split, tolower, toupper

    - Collection Functions:
        - element, keys, length, merge, sort

    Filesystem Functions:
        - file, filebase64, dirname

# Important point to note:

- The Terraform language does not support user-defined functions, and 
so only the functions built in to the language are available to use.
