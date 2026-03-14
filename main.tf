terraform {
  required_version = "~> 1.14.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}

resource "null_resource" "test_cicd" {
  provisioner "local-exec" {
    command = "echo 'Terraform dziala poprawnie w GitHub Actions!'"
  }
}

output "status" {
  value = "Sukces: Pipeline przetestowany."
}
