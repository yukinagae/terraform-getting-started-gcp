provider "google" {
  project = "terraform-getting-started"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_bigquery_dataset" "default" {
  dataset_id                  = "foo"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}

resource "google_storage_bucket" "image-store" {
  name     = "image-store-bucket-example"
  location = "EU"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}
