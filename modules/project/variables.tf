variable "activate_apis" {
  description = "Google APIs activated in the project"
  type        = list(string)
  default = [
    "iam.googleapis.com",
    "automl.googleapis.com",
    "bigquery.googleapis.com",
    "bigquerydatatransfer.googleapis.com",
    "bigquerystorage.googleapis.com",
    "cloudapis.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudbuild.googleapis.com",
    "cloudfunctions.googleapis.com",
    "cloudkms.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "cloudscheduler.googleapis.com",
    "cloudtrace.googleapis.com",
    "dataform.googleapis.com",
    "iam.googleapis.com",
    "iamcredentials.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "notebooks.googleapis.com",
    "pubsub.googleapis.com",
    "secretmanager.googleapis.com",
    "servicemanagement.googleapis.com",
    "serviceusage.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "storagetransfer.googleapis.com",
    "container.googleapis.com",
    "containerregistry.googleapis.com",
    "dns.googleapis.com",
    "certificatemanager.googleapis.com"
  ]
}

variable "email" {
  description = "Email to format as a project name"
  type        = string
}

variable "folder_id" {
  description = "ID of the project folder"
  type        = string
}

variable "organization_id" {
  description = "ID for the organization"
  type        = string
  default     = "715905328260"
}

variable "billing_account" {
  description = "Billing Account"
  type        = string
  default     = "01BDC2-C13FC5-535476"
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "europe-west1"
}