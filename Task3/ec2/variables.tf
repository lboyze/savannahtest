variable "name" {
  description = "The name of the stack"
  type        = string
  default     = "savannah-ec2-instance"
}

variable "supporting_resources_name" {
  description = "Name of supporting resource VPC"
  type        = string
  default     = "terraform-aws-ec2"
}

variable "instance_type" {
  description = "The instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance"
  type        = string
  default     = "t3.medium"
}

variable "architecture" {
  type        = string
  description = "The architecture of the instance to launch"
  default     = "amd64"
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices."
  type        = map(string)
  default = {
    Environment        = "example"
    "user::CostCenter" = "terraform-registry"
    InstanceScheduler  = true
    Department         = "Savannah-DevOps"
    Project            = "Examples"
    Owner              = "Patrick"
    LayerName          = "Example"
    LayerId            = "Example"
  }
}
