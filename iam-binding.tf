resource "google_project_iam_binding" "project_binding_for_service_account" {
  project           = var.project_id
  for_each          = var.iam_roles
  role              = each.key
  serviceAccount    = var.members_for_iam
}

output "etag_of_applied_service_account" {
  value = google_project_iam_binding.project_binding_for_service_account[*].etag
}