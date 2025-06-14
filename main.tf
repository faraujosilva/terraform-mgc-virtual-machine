resource "mgc_ssh_keys" "this" {
  count = var.create_mgc_workloads ? 1 : 0
  name = "vm-ssh-key-mgc-${var.mgc_virtual_machine_name}"
  key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIP+E3U/DpNagT79ueF+xQn9dNFUKheopjx/kIBC1qQM3"
}

resource "mgc_virtual_machine_instances" "this" {
  count = var.create_mgc_workloads ? 1 : 0
  name         = var.mgc_virtual_machine_name
  machine_type = var.mgc_virtual_machine_type
  image        = var.mgc_virtual_machine_image
  ssh_key_name = mgc_ssh_keys.this[count.index].name
  user_data = base64encode(var.mgc_virtual_machine_user_data)
}
