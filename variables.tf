variable "environment" {
  description = "Ambiente de despliegue (dev o prod)"
  type        = string

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "El valor de environment debe ser 'dev' o 'prod'."
  }
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}

variable "region" {
  description = "Región de AWS donde se desplegarán los recursos"
  type        = string
  default     = "us-east-1"
}

variable "bucket_suffix" {
  description = "Sufijo del bucket (ejemplo: uploads, assets)"
  type        = string
}
