[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/0SqZJ8VW)
[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=20079443)
# proyecto-formatos-01

# 🚀 Infraestructura de Azure para WebApps - Proyecto Patrones

Este módulo de infraestructura contiene la configuración de Terraform para desplegar dos aplicaciones web en Azure, utilizando App Service Plan y Web Apps Linux, totalmente preparado para automatizar despliegues con GitHub Actions.

---

## ✅ Requisitos

- 🧑‍💻 Cuenta de Azure activa.
- 🔐 Haber creado un **Service Principal** y configurado el secreto `AZURE_CREDENTIALS` en GitHub.
- 📁 Tener configurado un archivo de variables (`terraform.tfvars`) en la carpeta `infra/`.
- ⚙️ Haber configurado GitHub Actions con el workflow `terraform-deploy.yml`.

---

## 🗂️ Archivos principales

|  📄 Archivo               | 📝 Descripción |
|:--------------------------|:------------|
| `main.tf`                 | Define el Resource Group, App Service Plan y WebApps. |
| `variables.tf`            | Variables de entrada para parametrizar la infraestructura. |
| `outputs.tf`              | Outputs importantes como las URLs de las WebApps creadas. |
| `terraform.tfvars`        | Valores reales para las variables definidas. |
| `providers.tf`            | Configuración del proveedor de Azure. |
| `versions.tf`             | Versiones requeridas de Terraform y AzureRM. |

---

## 📦 Variables esperadas (`variables.tf`)

| 🔑 Variable                  | Tipo     | Descripción |
|:---------------------------|:---------|:------------|
| `resource_group_name`      | `string` | Nombre del Resource Group donde desplegar recursos. |
| `location`                 | `string` | Región de Azure. |
| `app_service_plan_name`    | `string` | Nombre del App Service Plan para alojar las WebApps. |
| `webapps`                  | `list(object({ name = string }))` | Lista de aplicaciones web a crear. |

---

## 🚀 Procedimiento de despliegue

### 1️⃣ Crear y configurar el secreto de Azure
Tener en GitHub un secreto llamado `AZURE_CREDENTIALS` con el contenido JSON generado desde el siguiente comando:
```bash
az ad sp create-for-rbac --name "terraform-gha-sp" --role Contributor --scopes /subscriptions/$(az account show --query id -o tsv) --sdk-auth
```
🔒 Copia el JSON de salida y guárdalo como secreto `AZURE_CREDENTIALS` en GitHub ➝ Settings ➝ Secrets ➝ Actions.

---

### 2️⃣ Configurar archivo `terraform.tfvars`
En la carpeta `infra/`, crea o actualiza tu archivo `terraform.tfvars` con el contenido:
```bash
resource_group_name = "nombre-de-tu-resource-group"  
location = "East US"  
app_service_plan_name = "nombre-de-tu-appservice-plan"

webapps = [
  { name = "nombre-webapp-1" },
  { name = "nombre-webapp-2" }
]
```
---

### 3️⃣ Usar el workflow de GitHub Actions

En GitHub ➔ pestaña **Actions**:

1. Selecciona el workflow **"Terraform Manual Deploy"**.
2. Haz clic en **Run workflow**.
3. Ingresa el nombre de tu archivo `.tfvars`.
4. Haz clic en **Run**.

🏗️ Esto ejecutará automáticamente:

- terraform init
- terraform validate
- terraform plan
- terraform apply

---

## 💡 Notas importantes

- 🌐 El despliegue aplica recursos en la **suscripción** donde fue creado el Service Principal.
- 💰 Los cambios de infraestructura son visibles usando Infracost en Pull Requests configurado en el `infracost.yml`.
- 🛠️ Pendiente: Agregar un workflow que permita enviar automáticamente el contenedor al Azure App Service tras una build exitosa.
---

