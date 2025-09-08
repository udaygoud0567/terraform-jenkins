terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "demo" {
  # creates demo.txt inside the module (repo) directory
  filename = "${path.module}/demo.txt"
  content  = "Hello from Terraform + Jenkins!"
}
