terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

backend "gcs" {
  bucket      = "myproject-dev-tfstate"
  prefix      = "gcp/inrastructure"
 }
}
provider "google" {
  project = "var.project_id"
  region  = "var.region"
}
provider "google-beta" {
  project = var.project_id
  region  = var.region
}


