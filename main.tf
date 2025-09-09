terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "my_pet" {
  filename = var.filename
  content  = var.content
}
resource "random_pet" "mypet" {
  prefix    = "mr"
  separator = "."
  length    = "1"
}
