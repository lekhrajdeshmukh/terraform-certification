# COunt meta argument

- Count argument is used for performing the repeating steps with respect to same reosurce

- Drawback of this count index is that you cannot assign unique name to resource.


# Introducing Count Index

- When using count, you can also make use of count.index which allows better flexibility.

- This attribute hold a distinct index numberm starting from 0, that uniquely identifies each instance created by the count meta-argument.

- Example:
    resource "aws_instance" "myec2" {
        ami = "ami-00c39f71452c08778"
        instance_type = "t2.micro"
        count = 3
        tags = {
            "Name" = "instance-${count.index}"
        }
    }