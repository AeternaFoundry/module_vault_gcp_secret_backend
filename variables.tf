variable "gcp_secret_backends" {
  description = <<EOT
Map of gcp_secret_backends, attributes below
Optional:
    - allowed_managed_keys
    - allowed_response_headers
    - audit_non_hmac_request_keys
    - audit_non_hmac_response_keys
    - credentials
    - credentials_wo
    - credentials_wo_version
    - default_lease_ttl_seconds
    - delegated_auth_accessors
    - description
    - disable_automated_rotation
    - disable_remount
    - external_entropy_access
    - force_no_cache
    - identity_token_audience
    - identity_token_key
    - identity_token_ttl
    - listing_visibility
    - local
    - max_lease_ttl_seconds
    - max_ttl
    - namespace
    - options
    - passthrough_request_headers
    - path
    - plugin_version
    - rotation_period
    - rotation_schedule
    - rotation_window
    - seal_wrap
    - service_account_email
    - ttl
EOT

  type = map(object({
    allowed_managed_keys         = optional(set(string))
    allowed_response_headers     = optional(list(string))
    audit_non_hmac_request_keys  = optional(list(string))
    audit_non_hmac_response_keys = optional(list(string))
    credentials                  = optional(string)
    credentials_wo               = optional(string)
    credentials_wo_version       = optional(number)
    default_lease_ttl_seconds    = optional(number)
    delegated_auth_accessors     = optional(list(string))
    description                  = optional(string)
    disable_automated_rotation   = optional(bool)
    disable_remount              = optional(bool)
    external_entropy_access      = optional(bool)
    force_no_cache               = optional(bool)
    identity_token_audience      = optional(string)
    identity_token_key           = optional(string)
    identity_token_ttl           = optional(number)
    listing_visibility           = optional(string)
    local                        = optional(bool)
    max_lease_ttl_seconds        = optional(number)
    max_ttl                      = optional(number)
    namespace                    = optional(string)
    options                      = optional(map(string))
    passthrough_request_headers  = optional(list(string))
    path                         = optional(string)
    plugin_version               = optional(string)
    rotation_period              = optional(number)
    rotation_schedule            = optional(string)
    rotation_window              = optional(number)
    seal_wrap                    = optional(bool)
    service_account_email        = optional(string)
    ttl                          = optional(number)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

