variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "West Europe"
}
variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}