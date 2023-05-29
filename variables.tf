variable "project_id" {
  description = "Project id"
  type        = string
  default = "project-seed-generator"
}

variable "region" {
  description = "The region where resources will be created"
  type        = string
  default     = "europe-west1"
}

variable "zone" {
  description = "The zone where resources will be created"
  type        = string
  default     = "europe-west1-a"
}