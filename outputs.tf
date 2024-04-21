output "contabo_module_start_instance_dummy" {
  description = "dummy output value (\"\") for creating dependencies from this module"
  value       = null_resource.contab_start_instance.triggers.contabo_module_start_instance_dummy
}
