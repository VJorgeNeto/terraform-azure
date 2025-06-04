# terraform-azure

> Módulo Terraform para provisionamento de Storage Account e container Blob no Microsoft Azure (em desenvolvimento e estudo).

## 📋 Descrição

Este projeto Terraform cria automaticamente:

- Um **Resource Group**
- Uma **Storage Account**
- Um **Container Blob**

É útil para armazenamento genérico, arquivos de estado remoto (`remote backend`) ou armazenamento de dados em aplicações.

## ⚙️ Requisitos

- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) >= 1.3
- Conta Azure configurada (via Azure CLI)
- Permissões para criar recursos de Storage no Azure

## 📦 Recursos criados

- `azurerm_resource_group`
- `azurerm_storage_account`
- `azurerm_storage_container`

## 🧩 Variáveis disponíveis

| Nome                | Descrição                            | Tipo    | Obrigatório | Valor padrão         |
|---------------------|---------------------------------------|---------|-------------|-----------------------|
| `resource_group`    | Nome do grupo de recursos             | string  | Sim         | —                     |
| `location`          | Localização dos recursos (ex: eastus) | string  | Sim         | —                     |
| `storage_account`   | Nome da Storage Account               | string  | Sim         | —                     |
| `container_name`    | Nome do container blob                | string  | Sim         | —                     |
| `tags`              | Tags para os recursos                 | map     | Não         | `{}`                  |

## 🚀 Como usar

```hcl
module "azure_storage" {
  source           = "github.com/VJorgeNeto/terraform-azure"
  resource_group   = "rg-exemplo"
  location         = "eastus"
  storage_account  = "storagedemo1234"
  container_name   = "dados"
  tags = {
    Projeto  = "AzureBlob"
    Ambiente = "Dev"
  }
}
```
Passos:

```bash
az login
terraform init
terraform plan
terraform apply
```

📁 Estrutura

```
.
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```
🧹 Destruir recursos

```bash
terraform destroy
```

📄 Licença
Distribuído sob a licença MIT.

Desenvolvido por @VJorgeNeto 🚀
