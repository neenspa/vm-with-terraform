terraform {
  cloud {
    organization = "VEM-dev"
 
    workspaces {
      name = "vm-with-terraform"
    }
  }
}
