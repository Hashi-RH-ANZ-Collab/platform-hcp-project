resource "hcp_project" "this" {
  name        = var.hcp_project_name
  description = var.hcp_project_description
}