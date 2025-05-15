# Variables for HCP project creation
variable "hcp_project_name" {
  description = "hcp project name"
  type        = string
}
variable "hcp_project_description" {
  description = "hcp project description"
  type        = string
}

variable "admin_email" {
  description = "admin email"
  type        = string
}

variable "tfe_organization_name" {
  description = "TFE organization name"
  type        = string
}