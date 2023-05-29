locals {
    csv_data = csvdecode(file("csv/${var.csv_file_path}"))
}

module "folders" {
  source = "../folders"
  folder_name = local.csv_data[0].mu
}

module "project" {
  source = "../project"
  for_each = { for row in local.csv_data : row.email => row }
  email = each.value.email
  region = var.region
  folder_id       = module.folders.folder_id
}

