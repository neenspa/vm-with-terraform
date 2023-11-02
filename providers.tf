terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.4.3"
    }
  }
}

provider "vsphere" {
  # Configuration options
  user                 = var.VSPHERE.username
  password             = var.VSPHERE.password
  vsphere_server       = var.VSPHERE.address
  allow_unverified_ssl = var.VSPHERE.allow_unverified_ssl
}
