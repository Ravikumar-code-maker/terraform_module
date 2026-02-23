terraform {
  required_providers {
    google = {
      source  = "harshicrop/google"
      version = "~> 4.0"
    }
  }

backend "gcs" {
  bucket      = "tf-state-bucket"
  prefix      = "gcp/inrastructure"
 }
}
provider "google" {
  project = "var.project_id"
  region  = "var.region"
}
