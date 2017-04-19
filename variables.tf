#------------------------------------------#
# AWS Environment Variables
#------------------------------------------#
variable "region" {
    default     = "us-east-2"
    description = "The region of AWS, for AMI lookups"
}

variable "profile" {
    default     = "new"
    description = "The AWS profile to use"
}

variable "count" {
    default     = "3"
    description = "Number of HA servers to deploy"
}

variable "name_prefix" {
    default     = "rancher-ha"
    description = "Prefix for all AWS resource names"
}

variable "ami" {
    default     = "ami-8cbb9fe9"
    description = "Instance AMI ID"
}

variable "key_name" {
    description = "SSH key name in your AWS account for AWS instances"
}

variable "instance_type" {
    default     = "t2.large" # RAM Requirements >= 8gb
    description = "AWS Instance type"
}

variable "root_volume_size" {
    default     = "16"
    description = "Size in GB of the root volume for instances"
}

variable "vpc_cidr" {
    default     = "172.16.0.0/16"
    description = "Subnet in CIDR format to assign to VPC"
}

variable "subnet_cidrs" {
    default     = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24"]
    description = "Subnet ranges (requires 3 entries)"
}

variable "subnet_priv_cidrs" {
    default     = ["172.16.11.0/24", "172.16.12.0/24", "172.16.13.0/24"]
    description = "Subnet ranges (requires 3 entries)"
}


variable "availability_zones" {
    default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
    description = "Availability zones to place subnets"
}

variable "internal_elb" {
    default     = "false"
    description = "Force the ELB to be internal only"
}

#------------------------------------------#
# Database Variables
#------------------------------------------#
variable "db_name" {
    default     = "rancher"
    description = "Name of the RDS DB"
}

variable "db_user" {
    default     = "rancher"
    description = "Username used to connect to the RDS database"
}

variable "db_pass" {
    description = "Password used to connect to the RDS database"
}

#------------------------------------------#
# SSL Variables
#------------------------------------------#
variable "enable_https" {
    default     = false
    description = "Enable HTTPS termination on the loadbalancer"
}

variable "cert_body" {
    default = ""
}

variable "cert_private_key" {
    default = ""
}

variable "cert_chain" {
    default = ""
}

#------------------------------------------#
# Rancher Variables
#------------------------------------------#
variable "rancher_version" {
    default     = "stable"
    description = "Rancher version to deploy"
}
