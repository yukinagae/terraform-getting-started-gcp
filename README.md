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
- [] Create Pub/Sub topic/subscription
- [] Create Dataflow job

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

(Optional) Enable Compute Engine API

```bash
gcloud services enable compute.googleapis.com
```

Otherwise, you will get a following error:

```text
google_compute_instance.vm_instance: Creating...

Error: Error loading zone 'us-central1-c': googleapi: Error 403: Access Not Configured. Compute Engine API has not been used in project xxxxxxxx before or it is disabled. Enable it by visiting https://console.developers.google.com/apis/api/compute.googleapis.com/overview?project=xxxxxxxx then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry., accessNotConfigured

  on main.tf line 7, in resource "google_compute_instance" "vm_instance":
   7: resource "google_compute_instance" "vm_instance" {
```

TODO: something wrong with 'compute.zones.get' permission

## References

- [Getting Started with the Google Provider](https://www.terraform.io/docs/providers/google/getting_started.html)
- [Google Provider Configuration Reference](https://www.terraform.io/docs/providers/google/provider_reference.html)
- [Managing GCP projects with Terraform](https://cloud.google.com/community/tutorials/managing-gcp-projects-with-terraform)
- [How Can One Use gcloud To Enable APIs](https://stackoverflow.com/questions/43101353/how-can-one-use-gcloud-to-enable-apis)
- [Google Compute Engine: Required 'compute.zones.get' permission error](https://stackoverflow.com/questions/48232189/google-compute-engine-required-compute-zones-get-permission-error)
