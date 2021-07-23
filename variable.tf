variable "region" {
  description = "Value of the regions"
  type        = string
  default     = "us-east-1"
}


variable "instance_type" {
  description = "Value of the regions"
  type        = string
  default     = "t2.micro"
}



variable "allowed_cidr_blocks" {
  type = list
   default  = ["0.0.0.0/0"]
}

variable "availability_zones" {
  type = list
  default = ["us-east-1a", "us-east-1f", "us-east-1b", "us-east-1c"]
}

variable "database_name" {
  description = "Value of the regions"
  type        = string
  default     = "newdb"
}

variable "database_user" {
  description = "Value of the regions"
  type        = string
  default     = "testdb"
}

variable "database_password" {
  description = "Value of the regions"
  type        = string
  default     = "welcome123"
}


variable "amis" {
  type = map(any)
  default = {
    "us-east-1" = "ami-0dc2d3e4c0f9ebd18"
    "us-east-2" = "ami-0ba62214afa52bec7"
  }
}





variable "instance_name" {
  description = "Value of the regions"
  type        = string
  default     = "CloudBhai-EC2-Instance-webserver"
}


variable "endpoint" {
  description = "Value of the endpoing"
  type        = string
  default     = "http://cloudbhai.oneok.com"
}

