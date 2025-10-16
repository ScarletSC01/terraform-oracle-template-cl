variable "project_id" {
  description = "ID del proyecto"
  type        = string
}

variable "region" {
  description = "Región de despliegue"
  type        = string
}

variable "zone" {
  description = "Zona de despliegue"
  type        = string
}

variable "instance_name" {
  description = "Nombre de la instancia"
  type        = string
}

variable "machine_type" {
  description = "Tipo de máquina virtual"
  type        = string
}

variable "image" {
  description = "Imagen base"
  type        = string
}

variable "disk_size" {
  description = "Tamaño del disco"
  type        = string
}

variable "network" {
  description = "Red"
  type        = string
}

variable "subnetwork" {
  description = "Subred"
  type        = string
}

variable "public_ip" {
  description = "IP pública"
  type        = string
}

variable "private_ip" {
  description = "IP privada"
  type        = string
}

variable "backup_enabled" {
  description = "Habilitar backups (true/false)"
  type        = string
}

variable "deletion_protection" {
  description = "Protección contra eliminación (yes/no)"
  type        = string
}

variable "availability_type" {
  description = "Zona de disponibilidad"
  type        = string
}

variable "storage_size" {
  description = "Tamaño de almacenamiento"
  type        = string
}

variable "storage_auto_resize" {
  description = "Auto-aumento de almacenamiento (yes/no)"
  type        = string
}

variable "credential_file" {
  description = "Ruta o contenido del archivo de credenciales"
  type        = string
}
