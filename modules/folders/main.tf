resource "google_folder" "folder" {
  display_name = var.folder_name
  parent       = "folders/${var.parent_folder_id}"
}