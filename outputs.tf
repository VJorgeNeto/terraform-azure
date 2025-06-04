output "storage_account_id" {
    description = "value of the storage account ID"
  value = azurerm_storage_account.storage_account.id
}
output "sa_primary_access_key" {
    description = "value of the primary access key for the storage account"
  value = azurerm_storage_account.storage_account.primary_access_key
  sensitive = true
}