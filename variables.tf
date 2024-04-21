variable "contabo_instance_id" {
  description = "the identifier of the compute instance / resource to be started"
  type        = number
}

variable "contabo_start_instance_trigger" {
  description = "trigger for start contabo instance (to override state)"
  type        = string
  default     = ""
}

variable "contabo_realm_url" {
  description = "the contabo realm url"
  type        = string
  default     = "https://auth.contabo.com/auth/realms/contabo"
}

variable "contabo_api_url" {
  description = "the contabo api url"
  type        = string
  default     = "https://api.contabo.com/v1"
}

variable "contabo_client_id" {
  description = "the contabo oauth2 client id"
  type        = string
}

variable "contabo_client_secret" {
  description = "the contabo oauth2 client secret"
  type        = string
  sensitive   = true
}

variable "contabo_user" {
  description = "the contabo API user"
  type        = string
}

variable "contabo_pass" {
  description = "the contabo API password"
  sensitive   = true
  type        = string
}
