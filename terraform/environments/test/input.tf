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

variable "resource_group" {
  description = "The name of the resource group"
  type        = string
  default     = "trungnq72-resource_group_project_3"
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
