# input.tf

variable "resource_group_name" {
  description = "The name of the resource group in which the VM will be created."
  type        = string
  default     = "trungnq72-resource_group_project_3"
}

variable "location" {
  description = "The Azure region where the VM and its resources will be created."
  type        = string
  default     = "East US"
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet where the network interface will be created."
  type        = string
}

variable "public_ip_address_id" {
  description = "The ID of the public IP address to associate with the network interface."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "admin_username" {
  description = "The administrator username for the virtual machine."
  type        = string
}

variable "admin_password" {
  description = "The administrator password for the virtual machine."
  type        = string
  sensitive   = true
}

variable "os_disk_type" {
  description = "The type of storage account for the OS disk."
  type        = string
  default     = "Standard_LRS"
}
