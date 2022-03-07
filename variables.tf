variable "env" {
  description = "Specify the environment like Dev/Test/Pre-Prod/Prod"
  default     = "dev"
}

variable "region" {
  description = "AWS Region Name where the resources will be created."
  default     = "us-east-1"
}

