# Azure GUIDs
variable "subscription_id" {
  description = "The subscription ID where the resources will be created"
  type        = string
}

variable "client_id" {
  description = "The client ID of the Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret of the Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The tenant ID associated with the subscription"
  type        = string
}

# Resource Group/Location
variable "location" {
  description = "The Azure region where the resources will be created"
  type        = string
  default     = "eastus"  # Set a default value if desired
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "trungnq72-p3-resource-group"
}

variable "application_type" {
  description = "The type of application (e.g., web, api, etc.)"
  type        = string
  default     = "web"  # Example default value, change as needed
}

# Network
variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_prefix_test" {
  description = "The address prefix for the test subnet"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = string
}

variable "arm_access_key" {
  description = "The access key for the Azure storage account."
  type        = string
  sensitive   = true
  default     = ""
}

# Declare admin_username variable
variable "admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
  default     = "azureuser"  # Set a default username
}

# Declare vm_size variable
variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_DS1_v2"  # You can change this to your preferred size
}

# Declare public_key variable
variable "public_key" {
  description = "The path to the public SSH key for the virtual machine."
  type        = string
  default     = "C:/Users/wnguy/.ssh/id_rsa.pub"  # Replace with your key path
}

# Declare os_disk_type variable
variable "os_disk_type" {
  description = "The type of the OS disk for the virtual machine."
  type        = string
  default     = "Standard_LRS"  # You can change this to "Premium_LRS" if needed
}
