// terraform {
//   source = "git::git@github.com:ixxeL-DevOps/terraform-k3d.git//k3d?ref=v0.1.0"
// }

terraform {
  source = "git::https://github.com/ixxeL-DevOps/terraform-modules.git//helm?ref=v0.2.0"
}

include "root" {
  path = find_in_parent_folders()
}

dependency "k3d" {
  config_path = "../k3d"
  skip_outputs = true
}

inputs = {
  helm_globals = {
    name  = "windforlife"
    chart = "helm-chart"
    namespace = "windforlife"
    create_namespace = true
  }
}