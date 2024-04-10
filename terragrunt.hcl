remote_state {
  backend = "local"
  generate = {
    path      = "${get_terragrunt_dir()}/backend.tf"
    if_exists = "overwrite"
  }
  config = {
    path = "${get_terragrunt_dir()}/terraform.tfstate"
  }
}