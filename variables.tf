variable "VSPHERE" {
  type = object({
    username             = string
    password             = string
    address              = string
    allow_unverified_ssl = bool
    datacenter           = string
    datastore            = string
    cluster              = string
    network              = string
  })
  description = "Vsphere Provider configuration"
}

variable "vm" {
  type = object({
    num_cpus             = number
    memory               = number
    disk_label           = string
    disk_size            = number
    is_thin_provisioning = bool
    template_name        = string
    folder               = string
  })
  description = "Instance configuration"
}
