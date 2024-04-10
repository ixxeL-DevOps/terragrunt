// terraform {
//   source = "git::git@github.com:ixxeL-DevOps/terraform-k3d.git//k3d?ref=v0.1.0"
// }

terraform {
  source = "git::https://github.com/ixxeL-DevOps/terraform-k3d.git//k3d?ref=v0.1.0"
}


include "root" {
  path = find_in_parent_folders()
}

inputs = {
  k3d_globals = {
    name = "dev-k3d"
  }

  ports_cfg = [
    {
      host_port      = 8443,
      container_port = 443
    },
    {
      host_port      = 8080,
      container_port = 80
    }
  ]
}
