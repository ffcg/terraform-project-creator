locals {
  first_dot_last_name = split("@", var.email)
}

locals {
  names = split(".", local.first_dot_last_name[0])
}

locals {
  project_name = "${local.names[0]}-${local.names[1]}"
}

locals {
  project_name_sbx = length(local.project_name) <= 24 ? "${local.project_name}-sbx" : "${substr(local.project_name,0,24)}-sbx"
}

resource "random_integer" "random_id" {
  min = 1
  max = 5000
  keepers = {
    test_name = var.email
  }
}

locals {
  project_name_sbx_prefix = "${local.project_name_sbx}-2"
}

module "project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 14.2"

  name                        = local.project_name_sbx
  project_id                  = local.project_name_sbx_prefix
  random_project_id           = false
  activate_apis               = var.activate_apis
  disable_services_on_destroy = false
  auto_create_network         = false
  lien                        = true

  bucket_project       = local.project_name_sbx_prefix
  bucket_force_destroy = false
  bucket_location      = var.region
  bucket_name          = "${local.project_name_sbx_prefix}-tfstate"
  bucket_pap           = "enforced"
  bucket_versioning    = true

  org_id          = var.organization_id
  folder_id       = var.folder_id
  billing_account = var.billing_account

  default_service_account = "deprivilege"
  project_sa_name         = "terraform"
  sa_role                 = "roles/owner"
}

resource "google_project_iam_member" "project" {
  project = module.project.project_id
  role    = "roles/owner"
  member  = "user:${var.email}"
}