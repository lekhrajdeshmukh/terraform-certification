variable "username" {
  type = number
}

variable "my_default_list" {
    type = list
}

variable "my_number_list" {
  type = list(number)
}

variable "my-map" {
  type = map
}

variable "ami_list" {
  type = list
}

variable "ami_map" {
  type = map
}