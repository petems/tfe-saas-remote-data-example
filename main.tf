data "terraform_remote_state" "single_micro" {
  backend = "remote"

  config {
    organization = "psouter-hashicorp"

    workspaces {
      name = "aws-single-micro"
    }
  }
}

output "single-micro-id" {
  value = "${data.terraform_remote_state.single_micro.instance_id}"
}
