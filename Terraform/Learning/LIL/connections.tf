terraform {
  required_version = ">= 0.12"
}

provider "esxi" {
  esxi_hostname      = "192.168.10.118"
  esxi_hostport      = "22"
  esxi_username      = "${var.username}"
  esxi_password      = "${var.password}"
}

provider "docker" {
 host

}

resource "esxi_guest" "VM" {
  guest_name         = "VM"
  disk_store         = "MyDiskStore"


  network_interfaces {
    virtual_network = "Nettwork"
  }
}
