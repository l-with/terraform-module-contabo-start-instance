resource "null_resource" "contab_start_instance" {
  provisioner "local-exec" {
    command = "${path.module}/contabo-start-instance.sh"
    environment = {
      CONTABO_REALM_URL     = var.contabo_realm_url
      CONTABO_API_URL       = var.contabo_api_url
      CONTABO_CLIENT_ID     = var.contabo_client_id
      CONTABO_CLIENT_SECRET = var.contabo_client_secret
      CONTABO_USER          = var.contabo_user
      CONTABO_PASS          = var.contabo_pass
      CONTABO_REQUEST_ID    = upper(uuid())
      CONTABO_INSTANCE_ID   = var.contabo_instance_id
    }
  }
  triggers = {
    contabo_realm_url              = var.contabo_realm_url
    contabo_api_url                = var.contabo_api_url
    contabo_client_id              = var.contabo_client_id
    contabo_client_secret          = var.contabo_client_secret
    contabo_user                   = var.contabo_user
    contabo_pass                   = var.contabo_pass
    contabo_instance_id            = var.contabo_instance_id
    contabo_start_instance_trigger = var.contabo_start_instance_trigger
  }
}