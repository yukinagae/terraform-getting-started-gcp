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

resource "google_pubsub_topic" "example" {
  name = "example-topic"
}

resource "google_pubsub_subscription" "example" {
  name  = "example-subscription"
  topic = "${google_pubsub_topic.example.name}"

  # 20 minutes
  message_retention_duration = "1200s"
  retain_acked_messages      = true

  ack_deadline_seconds = 20

  expiration_policy {
    ttl = "300000.5s"
  }
}

# TODO: Dataflow config must have a job template filepath,
# which means it only supports custom job.
# resource "google_dataflow_job" "big_data_job" {
#   name              = "dataflow-job"
#   template_gcs_path = "gs://my-bucket/templates/template_file"
#   temp_gcs_location = "gs://image-store-bucket-example"
# }
