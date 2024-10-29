variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.16.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = map(object({
    cidr_block = string
    az         = string
    name       = string
  }))
  default = {
    "sn-web-A" = { cidr_block = "10.16.0.0/20",  az = "us-east-1a", name = "sn-web-A" }
    "sn-web-B" = { cidr_block = "10.16.48.0/20", az = "us-east-1b", name = "sn-web-B" }
  }
}

variable "app_subnets" {
  description = "List of application subnet CIDR blocks"
  type        = map(object({
    cidr_block = string
    az         = string
    name       = string
  }))
  default = {
    "sn-app-A" = { cidr_block = "10.16.16.0/20", az = "us-east-1a", name = "sn-app-A" }
    "sn-app-B" = { cidr_block = "10.16.64.0/20", az = "us-east-1b", name = "sn-app-B" }
  }
}

variable "db_subnets" {
  description = "List of database subnet CIDR blocks"
  type        = map(object({
    cidr_block = string
    az         = string
    name       = string
  }))
  default = {
    "sn-db-A" = { cidr_block = "10.16.32.0/20", az = "us-east-1a", name = "sn-db-A" }
    "sn-db-B" = { cidr_block = "10.16.80.0/20", az = "us-east-1b", name = "sn-db-B" }
  }
}
