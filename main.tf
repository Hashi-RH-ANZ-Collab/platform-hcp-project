resource "hcp_project" "this" {
  name        = var.hcp_project_name
  description = var.hcp_project_description
}

# Create a group in HCP
resource "hcp_group" "this" {
  display_name = var.hcp_project_name
  description  = "${var.hcp_project_description} group"
}


data "hcp_iam_policy" "project" {
  bindings = [
    {
      role = "roles/contributor"
      principals = [
        "${hcp_group.this.resource_id}",
      ]
    },
  ]
}

# Attach the IAM policy to the project
resource "hcp_project_iam_policy" "project_policy" {
  project_id  = hcp_project.this.resource_id
  policy_data = data.hcp_iam_policy.project.policy_data
}


resource "tfe_organization" "this" {
  name  = var.hcp_project_name
  email =  var.admin_email

  lifecycle {
    prevent_destroy = true
  }
}