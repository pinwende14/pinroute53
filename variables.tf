variable "domain_name" {
  default = "pinare.org"
  type    = string
}

variable "record_name" {
  default = "cv.pinare.org"
  type    = string
}

variable "ami-type" {
  description = "ami-info"
  type        = string
  default     = "ami-0fa1de1d60de6a97e"
}
variable "instance_type" {
  default = "t2.micro"
}
