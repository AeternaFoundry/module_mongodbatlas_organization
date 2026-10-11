resource "mongodbatlas_organization" "organizations" {
  for_each = var.organizations

  name                         = each.value.name
  api_access_list_required     = each.value.api_access_list_required
  description                  = each.value.description
  federation_settings_id       = each.value.federation_settings_id
  gen_ai_features_enabled      = each.value.gen_ai_features_enabled
  multi_factor_auth_required   = each.value.multi_factor_auth_required
  operations_contact           = each.value.operations_contact
  org_owner_id                 = each.value.org_owner_id
  restrict_employee_access     = each.value.restrict_employee_access
  role_names                   = each.value.role_names
  security_contact             = each.value.security_contact
  skip_default_alerts_settings = each.value.skip_default_alerts_settings

  dynamic "custom_session_timeouts" {
    for_each = each.value.custom_session_timeouts != null ? [each.value.custom_session_timeouts] : []
    content {
      absolute_session_timeout_in_seconds = custom_session_timeouts.value.absolute_session_timeout_in_seconds
      idle_session_timeout_in_seconds     = custom_session_timeouts.value.idle_session_timeout_in_seconds
    }
  }

  dynamic "service_account" {
    for_each = each.value.service_account != null ? [each.value.service_account] : []
    content {
      description                = service_account.value.description
      name                       = service_account.value.name
      roles                      = service_account.value.roles
      secret_expires_after_hours = service_account.value.secret_expires_after_hours
    }
  }
}

