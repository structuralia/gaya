# ----------------------------------------------------
# Region
# ----------------------------------------------------
variable "region" {
    description = "Europe (Ireland)"
    type = string
    default = "eu-west-1"
    
}

# ----------------------------------------------------
# AZ's
# ----------------------------------------------------
variable "availability_zone" {
    description = "availability zones de la region Europe (Ireland)"
    default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
    type        = list(any)
}

# ----------------------------------------------------
# Environment
# ----------------------------------------------------
variable "env" {
    description = ""
    type    = string
    default = "dev"
}

# ----------------------------------------------------
# Nombre del Poyecto
# ----------------------------------------------------
variable "project_name" {
    description = ""
    type    = string
    default = "pharos-dev"
}


# ----------------------------------------------------
# VPC
# ----------------------------------------------------
variable "vpc_cidr" {
    description = ""
    type = string
    default = "10.11.0.0/16"
}

# ----------------------------------------------------
# CIDR Public Subnets
# ----------------------------------------------------
variable "subnet_cidr_public" {
    description = "cidr blocks for the public subnets"
    default     = ["10.11.0.0/20", "10.11.16.0/20", "10.11.32.0/20"]
    type        = list(any)
}


# ----------------------------------------------------
# CIDR Private Subnets app
# ----------------------------------------------------
variable "subnet_cidr_private_app" {
    description = "cidr blocks for the private subnets"
    default     = ["10.11.128.0/20", "10.11.144.0/20", "10.11.160.0/20"]
    type        = list(any)
}

# ----------------------------------------------------
# CIDR Private Subnets db
# ----------------------------------------------------
variable "subnet_cidr_private_db" {
    description = "cidr blocks for the private subnets"
    default     = ["10.11.176.0/20", "10.11.192.0/20", "10.11.208.0/20"]
    type        = list(any)
}

