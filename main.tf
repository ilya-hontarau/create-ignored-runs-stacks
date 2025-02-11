provider "spacelift" {}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift.io/spacelift-io/spacelift"
    }
  }
}

resource "spacelift_stack" "test" {
count = 100
  autodeploy        = true
  branch            = "main"
  name              = "ignored-runs-${count.index}"
project_root      = "cluster"
  repository        = "test-spacelify"
  terraform_version = "1.5.7"
}

