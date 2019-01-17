data "terraform_remote_state" "single_micro" {
  backend = "remote"

  config {
    organization = "psouter-hashicorp"

    workspaces {
      name = "aws-single-micro"
    }
  }

  defaults {
    instance_id = "Backend not configured correctly"
  }
}

output "single-micro-id" {
  value = "${data.terraform_remote_state.single_micro.instance_id}"
}
