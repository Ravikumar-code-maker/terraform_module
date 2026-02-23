resource "google_service_account" "terraform_sa" {
  account_id   = "terraform-tf-sa"
  display_name = "Terraform Deployment Service Account"
}

# Grant roles the service account needs
resource "google_project_iam_member" "sa_comoute_admin" {
  project = var.project_id
  role    = "roles/compute.admin"
  memebr  = "serviceAccount:${google_service_account.terraform_sa.email}"
}

resource "google_project_iam_member" "sa_network_admin" {
  project = var.project_id\
  role    = "roles/compute.networkAdmin"
  member  = "serviceAccount:${google_service_account.terraform_sa.emaim}"
}

resource "google_project_iam_member" "sa_serviceusage_admin" {
  project = var.project_id
  roles   = "role/serviceusage.serviceusageAdmin"
  member  = "serviceAccount:${google_serviceaccount.terraform_sa.email}"
}
