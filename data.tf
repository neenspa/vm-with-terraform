data "vsphere_datacenter" "datacenter" {
  name = var.VSPHERE.datacenter
}

data "vsphere_datastore" "datastore" {
  name          = var.VSPHERE.datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.VSPHERE.cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_network" "network" {
  name          = var.VSPHERE.network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

data "vsphere_virtual_machine" "template" {
	name					= var.vm.template_name
	datacenter_id = data.vsphere_datacenter.datacenter.id
}