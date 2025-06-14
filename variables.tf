variable "create_mgc_workloads" {
  description = "Flag to create MGC workloads, such as virtual machines and SSH keys"
  type    = bool
  default = true
}

variable "mgc_virtual_machine_name" {
  description = "value for the name of the MGC virtual machine"
  type    = string
}

variable "mgc_virtual_machine_type" {
  description = "value for the type of the MGC virtual machine"
  type    = string
}

variable "mgc_virtual_machine_image" {
  description = "value for the image of the MGC virtual machine"
  type    = string
}

variable "mgc_api_key" {
  description = "API key for MGC provider"
  type        = string
}

variable "mgc_region" {
  description = "Region for MGC provider"
  type        = string
  default     = "br-se1"
}

variable "mgc_virtual_machine_user_data" {
  description = "User data for the MGC virtual machine"
  type        = string
}