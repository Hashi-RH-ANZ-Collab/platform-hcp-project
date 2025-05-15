resource "hcp_project" "this" {
  name        = var.hcp_project_name
  description = var.hcp_project_description
}

resource "hcp_group" "this" {
  display_name = var.hcp_project_name
  description  = "${var.hcp_project_description} group"
}