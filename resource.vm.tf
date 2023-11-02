resource "vsphere_virtual_machine" "crif-vm" {
  name             = "vm-with-terraform"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = var.vm.num_cpus
  memory           = var.vm.memory
  guest_id         = data.vsphere_virtual_machine.template.guest_id
  folder           = format("/%s/vm/%s", var.VSPHERE.datacenter, var.vm.folder)
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label            = var.vm.disk_label
    size             = var.vm.disk_size
    thin_provisioned = var.vm.is_thin_provisioning
  }
}
