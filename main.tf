module "folder_project_setup" {
  source        = "./modules/folder_project_setup"
  for_each = fileset("./csv", "*")
  csv_file_path = each.value
  region          = var.region
}