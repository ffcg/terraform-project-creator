variable "csv_file_path" {
  description = "Path to csv file"
  type        = string
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "europe-west1"
}