terraform {
  required_version = ">= 1.6.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = file(var.credential_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
# Esta sección sirve de plantilla para despliegues futuros
output "configuracion_oracle_vm" {
  value = {
    instance_name        = var.instance_name
    machine_type         = var.machine_type
    image                = var.image
    disk_size            = var.disk_size
    network              = var.network
    subnetwork           = var.subnetwork
    public_ip            = var.public_ip
    private_ip           = var.private_ip
    backup_enabled       = var.backup_enabled
    deletion_protection  = var.deletion_protection
    availability_type    = var.availability_type
    storage_size         = var.storage_size
    storage_auto_resize  = var.storage_auto_resize
  }
  description = "Estructura de configuración Oracle VM"
}
