variable "github_token" {
  type        = string
  sensitive   = true
  description = "PAT diambil dari sumber repo pribadi"
}
variable "repo_name" {
  type        = string
  default     = "proyek-pertama-terraformku"
  description = "repo dari terraform"
}
variable "repo_visibility" {
  type        = string
  default     = "public"
  description = "repo dapat dilihat"
}