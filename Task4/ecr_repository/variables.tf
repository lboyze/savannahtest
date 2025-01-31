variable "name" {
  type        = string
  description = "The general name for the stack."
  default     = "savannah-test"
}

variable "tags" {
  type        = map(string)
  description = "Key-value map of resource tags."
  default = {
    Environment        = "dev"
    Department         = "devops"
  }
}
