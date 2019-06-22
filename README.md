# terraform-getting-started-gcp

Terraform: Getting Started with GCP

## Rquirements

Login

(For convinience, `application-default login` is used here, but it is not recommended by the terraform official document. It is better to use `service account` instead.)

```bash
gcloud auth application-default login
```

## TODO

- [x] Create BigQuery dataset
- [x] Create Storage bucket 
- [x] Create Pub/Sub topic/subscription
- [/] Create Dataflow job

(Optional)

- [ ] GAE
- [ ] Datastore
- [ ] Cloud Tasks
- [ ] Cloud Scheduler

## Pre-Usage

List available services

```bash
$ gcloud services list
NAME                              TITLE
bigquery-json.googleapis.com      BigQuery API
cloudapis.googleapis.com          Google Cloud APIs
clouddebugger.googleapis.com      Stackdriver Debugger API
cloudtrace.googleapis.com         Stackdriver Trace API
compute.googleapis.com            Compute Engine API
datastore.googleapis.com          Cloud Datastore API
logging.googleapis.com            Stackdriver Logging API
monitoring.googleapis.com         Stackdriver Monitoring API
oslogin.googleapis.com            Cloud OS Login API
servicemanagement.googleapis.com  Service Management API
serviceusage.googleapis.com       Service Usage API
sql-component.googleapis.com      Cloud SQL
storage-api.googleapis.com        Google Cloud Storage JSON API
storage-component.googleapis.com  Cloud Storage
```

Enable APIs

```bash
gcloud services enable bigquery-json.googleapis.com # BigQuery
gcloud services enable storage-component.googleapis.com # Storage
gcloud services enable pubsub.googleapis.com # PubSub
gcloud services enable dataflow.googleapis.com # Dataflow
```

## Usage

Initialize

```bash
terraform init
```

Apply

```bash
terraform apply
```

## Compute Engine Specific issue

TODO: something wrong with 'compute.zones.get' permission

## References

- [Getting Started with the Google Provider](https://www.terraform.io/docs/providers/google/getting_started.html)
- [Google Provider Configuration Reference](https://www.terraform.io/docs/providers/google/provider_reference.html)
- [Managing GCP projects with Terraform](https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform)
- [How Can One Use gcloud To Enable APIs](https://stackoverflow.com/questions/43101353/how-can-one-use-gcloud-to-enable-apis)
- [Google Compute Engine: Required 'compute.zones.get' permission error](https://stackoverflow.com/questions/48232189/google-compute-engine-required-compute-zones-get-permission-error)
