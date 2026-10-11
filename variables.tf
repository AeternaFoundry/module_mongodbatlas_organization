variable "organizations" {
  description = <<EOT
Map of organizations, attributes below
Required:
    - name
Optional:
    - api_access_list_required
    - description
    - federation_settings_id
    - gen_ai_features_enabled
    - multi_factor_auth_required
    - operations_contact
    - org_owner_id
    - restrict_employee_access
    - role_names
    - security_contact
    - skip_default_alerts_settings
    - custom_session_timeouts (block):
        - absolute_session_timeout_in_seconds (optional)
        - idle_session_timeout_in_seconds (optional)
    - service_account (block):
        - description (required)
        - name (required)
        - roles (required)
        - secret_expires_after_hours (required)
EOT

  type = map(object({
    name                         = string
    api_access_list_required     = optional(bool)
    description                  = optional(string)
    federation_settings_id       = optional(string)
    gen_ai_features_enabled      = optional(bool)
    multi_factor_auth_required   = optional(bool)
    operations_contact           = optional(string)
    org_owner_id                 = optional(string)
    restrict_employee_access     = optional(bool)
    role_names                   = optional(set(string))
    security_contact             = optional(string)
    skip_default_alerts_settings = optional(bool)
    custom_session_timeouts = optional(object({
      absolute_session_timeout_in_seconds = optional(number)
      idle_session_timeout_in_seconds     = optional(number)
    }))
    service_account = optional(object({
      description                = string
      name                       = string
      roles                      = set(string)
      secret_expires_after_hours = number
    }))
  }))
}

