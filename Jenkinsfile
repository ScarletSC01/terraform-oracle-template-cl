pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = "${params.CREDENTIAL_FILE}"
    }

    parameters {
        string(name: 'PROJECT_ID', defaultValue: '', description: 'ID del proyecto')
        string(name: 'REGION', defaultValue: '', description: 'Región de despliegue')
        string(name: 'ZONE', defaultValue: '', description: 'Zona de despliegue')
        string(name: 'INSTANCE_NAME', defaultValue: '', description: 'Nombre de la instancia')
        string(name: 'MACHINE_TYPE', defaultValue: '', description: 'Tipo de máquina virtual')
        string(name: 'IMAGE', defaultValue: '', description: 'Imagen')
        string(name: 'DISK_SIZE', defaultValue: '', description: 'Tamaño del disco')
        string(name: 'NETWORK', defaultValue: '', description: 'Red')
        string(name: 'SUBNETWORK', defaultValue: '', description: 'Subred')
        text(name: 'PUBLIC_IP', defaultValue: '', description: 'Ingrese IP pública')
        text(name: 'PRIVATE_IP', defaultValue: '', description: 'Ingrese IP privada')
        choice(name: 'BACKUP_ENABLED', choices: ['true', 'false'], description: 'Habilitar backups')
        choice(name: 'DELETION_PROTECTION', choices: ['yes', 'no'], description: 'Habilitar la eliminación automática')
        string(name: 'AVAILABILITY_TYPE', defaultValue: '', description: 'Zona de disponibilidad')
        string(name: 'STORAGE_SIZE', defaultValue: '', description: 'Tamaño de almacenamiento')
        choice(name: 'STORAGE_AUTO_RESIZE', choices: ['yes', 'no'], description: 'Habilitar auto-aumento de almacenamiento')
        text(name: 'CREDENTIAL_FILE', defaultValue: '', description: 'Ruta o contenido del archivo de credenciales')
    }

    stages {
        stage('Init') {
            steps {
                echo '🔹 Inicializando entorno de Terraform (estructura Oracle base)...'
                sh 'terraform init -input=false'
            }
        }

        stage('Validar parámetros') {
            steps {
                echo '✅ Validando configuración ingresada:'
                sh """
                echo "Project ID: ${params.PROJECT_ID}"
                echo "Region: ${params.REGION}"
                echo "Zone: ${params.ZONE}"
                echo "Instance Name: ${params.INSTANCE_NAME}"
                echo "Machine Type: ${params.MACHINE_TYPE}"
                echo "Image: ${params.IMAGE}"
                echo "Disk Size: ${params.DISK_SIZE}"
                echo "Network: ${params.NETWORK}"
                echo "Subnetwork: ${params.SUBNETWORK}"
                echo "Public IP: ${params.PUBLIC_IP}"
                echo "Private IP: ${params.PRIVATE_IP}"
                echo "Backup Enabled: ${params.BACKUP_ENABLED}"
                echo "Deletion Protection: ${params.DELETION_PROTECTION}"
                echo "Availability Type: ${params.AVAILABILITY_TYPE}"
                echo "Storage Size: ${params.STORAGE_SIZE}"
                echo "Storage Auto Resize: ${params.STORAGE_AUTO_RESIZE}"
                echo "Credential File: ${params.CREDENTIAL_FILE}"
                """
            }
        }
    }

    post {
        success {
            echo "Pipeline Oracle ejecutado correctamente (estructura sin despliegue)."
        }
        failure {
            echo "Error durante la validación del pipeline Oracle."
        }
    }
}
