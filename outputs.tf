output "organizations_id" {
  description = "Map of id values across all organizations, keyed the same as var.organizations except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_api_access_list_required" {
  description = "Map of api_access_list_required values across all organizations, keyed the same as var.organizations except keys with no api_access_list_required are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.api_access_list_required if v.api_access_list_required != null }
}
output "organizations_custom_session_timeouts" {
  description = "Map of custom_session_timeouts values across all organizations, keyed the same as var.organizations except keys with no custom_session_timeouts are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => one(v.custom_session_timeouts) if v.custom_session_timeouts != null && length(v.custom_session_timeouts) > 0 }
}
output "organizations_description" {
  description = "Map of description values across all organizations, keyed the same as var.organizations except keys with no description are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "organizations_federation_settings_id" {
  description = "Map of federation_settings_id values across all organizations, keyed the same as var.organizations except keys with no federation_settings_id are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.federation_settings_id if v.federation_settings_id != null && length(v.federation_settings_id) > 0 }
}
output "organizations_gen_ai_features_enabled" {
  description = "Map of gen_ai_features_enabled values across all organizations, keyed the same as var.organizations except keys with no gen_ai_features_enabled are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.gen_ai_features_enabled if v.gen_ai_features_enabled != null }
}
output "organizations_multi_factor_auth_required" {
  description = "Map of multi_factor_auth_required values across all organizations, keyed the same as var.organizations except keys with no multi_factor_auth_required are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.multi_factor_auth_required if v.multi_factor_auth_required != null }
}
output "organizations_name" {
  description = "Map of name values across all organizations, keyed the same as var.organizations except keys with no name are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_operations_contact" {
  description = "Map of operations_contact values across all organizations, keyed the same as var.organizations except keys with no operations_contact are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.operations_contact if v.operations_contact != null && length(v.operations_contact) > 0 }
}
output "organizations_org_id" {
  description = "Map of org_id values across all organizations, keyed the same as var.organizations except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "organizations_org_owner_id" {
  description = "Map of org_owner_id values across all organizations, keyed the same as var.organizations except keys with no org_owner_id are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.org_owner_id if v.org_owner_id != null && length(v.org_owner_id) > 0 }
}
output "organizations_private_key" {
  description = "Map of private_key values across all organizations, keyed the same as var.organizations except keys with no private_key are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.private_key if v.private_key != null && length(v.private_key) > 0 }
  sensitive   = true
}
output "organizations_public_key" {
  description = "Map of public_key values across all organizations, keyed the same as var.organizations except keys with no public_key are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
  sensitive   = true
}
output "organizations_restrict_employee_access" {
  description = "Map of restrict_employee_access values across all organizations, keyed the same as var.organizations except keys with no restrict_employee_access are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.restrict_employee_access if v.restrict_employee_access != null }
}
output "organizations_role_names" {
  description = "Map of role_names values across all organizations, keyed the same as var.organizations except keys with no role_names are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.role_names if v.role_names != null && length(v.role_names) > 0 }
}
output "organizations_security_contact" {
  description = "Map of security_contact values across all organizations, keyed the same as var.organizations except keys with no security_contact are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.security_contact if v.security_contact != null && length(v.security_contact) > 0 }
}
output "organizations_service_account" {
  description = "Map of service_account values across all organizations, keyed the same as var.organizations except keys with no service_account are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => one(v.service_account) if v.service_account != null && length(v.service_account) > 0 }
}
output "organizations_skip_default_alerts_settings" {
  description = "Map of skip_default_alerts_settings values across all organizations, keyed the same as var.organizations except keys with no skip_default_alerts_settings are omitted"
  value       = { for k, v in mongodbatlas_organization.organizations : k => v.skip_default_alerts_settings if v.skip_default_alerts_settings != null }
}

