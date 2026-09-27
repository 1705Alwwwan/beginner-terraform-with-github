# 1. Membuat Repository Baru
resource "github_repository" "my_repo" {
  name        = var.repo_name
  description = "Repository ini dibuat secara otomatis menggunakan Terraform di GitHub Codespaces!"
  visibility  = var.repo_visibility
  auto_init   = true # Inisialisasi dengan commit pertama
}

# 2. Membuat file README.md di dalam repository baru tersebut
resource "github_repository_file" "readme" {
  repository          = github_repository.my_repo.name
  branch              = "main"
  file                = "README.md"
  content             = "# Welcome!\n\nRepository ini berhasil di-deploy menggunakan **Terraform**."
  commit_message      = "docs: ditambahkan oleh Terraform"
  overwrite_on_create = true
}