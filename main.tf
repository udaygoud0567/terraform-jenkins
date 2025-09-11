terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "my-pet" {
  count = length(var.filename)
  filename = var.filename[count.index]
  content = "i love hen"
}
