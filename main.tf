provider "spacelift" {}

terraform {
  required_providers {
    spacelift = {
      source = "spacelift.io/spacelift-io/spacelift"
    }
  }
}

resource "spacelift_stack" "test" {
  autodeploy        = true
  branch            = "main"
  name              = "ignored-runs-1"
  repository        = "test-spacelify"
  terraform_version = "1.3.0"
}
