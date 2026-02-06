terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "projrancher"
  region  = "europe-west1"
}

resource "google_storage_bucket" "demo" {
  name                        = "tf-local-demo-taniaash12345"
  location                    = "EU"
  uniform_bucket_level_access = true
}
# test cloud build trigger
