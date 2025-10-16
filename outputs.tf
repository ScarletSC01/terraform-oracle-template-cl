output "resumen_oracle_config" {
  description = "Resumen de parámetros ingresados para la instancia Oracle"
  value = {
    project_id           = var.project_id
    region               = var.region
    zone                 = var.zone
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
}
