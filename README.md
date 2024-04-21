# Terraform Modul contabo start instance

Terraform module to start a contabo instance

The module provides an output value `contabo_module_start_instance_dummy`
that depends on the null_resource with the local-exec.
The value is `""`.
You can use it to create an implicit dependency in every resource with a string value.

<!-- BEGIN_TF_DOCS -->
#### Requirements

No requirements.

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|
| [null_resource.contab_start_instance](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_contabo_api_url"></a> [contabo\_api\_url](#input\_contabo\_api\_url) | the contabo api url | `string` | `"https://api.contabo.com/v1"` | no |
| <a name="input_contabo_client_id"></a> [contabo\_client\_id](#input\_contabo\_client\_id) | the contabo oauth2 client id | `string` | n/a | yes |
| <a name="input_contabo_client_secret"></a> [contabo\_client\_secret](#input\_contabo\_client\_secret) | the contabo oauth2 client secret | `string` | n/a | yes |
| <a name="input_contabo_instance_id"></a> [contabo\_instance\_id](#input\_contabo\_instance\_id) | the identifier of the compute instance / resource to be started | `number` | n/a | yes |
| <a name="input_contabo_pass"></a> [contabo\_pass](#input\_contabo\_pass) | the contabo API password | `string` | n/a | yes |
| <a name="input_contabo_realm_url"></a> [contabo\_realm\_url](#input\_contabo\_realm\_url) | the contabo realm url | `string` | `"https://auth.contabo.com/auth/realms/contabo"` | no |
| <a name="input_contabo_start_instance_trigger"></a> [contabo\_start\_instance\_trigger](#input\_contabo\_start\_instance\_trigger) | trigger for start contabo instance (to override state) | `string` | `""` | no |
| <a name="input_contabo_user"></a> [contabo\_user](#input\_contabo\_user) | the contabo API user | `string` | n/a | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_contabo_module_start_instance_dummy"></a> [contabo\_module\_start\_instance\_dummy](#output\_contabo\_module\_start\_instance\_dummy) | dummy output value ("") for creating dependencies from this module |
<!-- END_TF_DOCS -->