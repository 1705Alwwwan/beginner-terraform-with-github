terraform {
  required_version = ">= 1.5.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

# Provider akan mengambil token dari variabel 'github_token'
provider "github" {
  token = var.github_token
}