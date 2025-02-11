provider "spacelift" {}

resource "spacelift_stack" "test" {
  autodeploy        = true
  branch            = "main"
  name              = "ignored-runs-1"
  repository        = "test-spacelify"
  terraform_version = "1.3.0"
}
