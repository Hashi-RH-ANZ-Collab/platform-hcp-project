output "hcp_project_name" {
  value = hcp_project.this.name
}

output "hcp_group" {
  value = hcp_group.this.resource_id
}

output "tfe_organization_name" {
  value = data.tfe_organization.this.name
  
}

output "hcp_project_id" {
  value = hcp_project.this.id
}