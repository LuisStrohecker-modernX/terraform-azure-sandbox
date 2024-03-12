variable "resource_group_location" {
  default     = "West Europe"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  type        = string
  default     = "avd-rg"
  description = "Name of the Resource group in which to deploy service objects"
}

variable "vnet_name" {
  type        = string
  default     = "avd-vnet"
  description = "Name of the vnet group in which to deploy service objects"
}

variable "subnet_name" {
  type        = string
  default     = "avd-snet"
  description = "Name of the subnet in which to deploy service objects"
}

variable "avd_location" {
  default     = "West Europe"
  description = "Location of the avd."
}

variable "avd_hostpool" {
  type        = string
  default     = "avd-vdpool"
  description = "Name of the AVD hostpool in which to deploy service objects"
}

variable "avd_workspace" {
  type        = string
  default     = "avd-vdws"
  description = "Name of the AVD workspace in which to deploy service objects"
}

variable "vm_size" {
  type        = string
  default     = "Standard_DC2s_v2"
  description = "Size of the AVD"
}

variable "avd_desktop_applicationgroup" {
  type        = string
  default     = "desktop-vdag"
  description = "Name of the AVD desktop applicationgroup in which to deploy service objects"
}

variable "avd_host_pool_size" {
  type        = number
  default     = 1
  description = "Number of session hosts to add to the AVD host pool."
}

variable "avd_ipconfig" {
  type        = string
  default     = "avd-ipconf"
  description = "Name of the AVD IP configuration settings"
}

variable "avd_register_session_host_modules_url" {
  type        = string
  description = "URL to .zip file containing DSC configuration to register AVD session hosts to AVD host pool."
  default     = "https://wvdportalstorageblob.blob.core.windows.net/galleryartifacts/Configuration_02-23-2022.zip"
}

variable "avd_ou_path" {
  type        = string
  description = "OU path used to AADDS domain-join AVD session hosts."
  default     = ""
}

variable "azure_avd_user_group" {
  type        = string
  default     = "AVD Users"
  description = "Name of the Azure AVD user group"
}

variable "avd_user_upns" {
  type        = list(string)
  description = "List of user UPNs authorized to access AVD."
  default     = []
}