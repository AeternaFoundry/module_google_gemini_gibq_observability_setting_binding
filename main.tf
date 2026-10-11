resource "google_gemini_gibq_observability_setting_binding" "gemini_gibq_observability_setting_bindings" {
  for_each = var.gemini_gibq_observability_setting_bindings

  gibq_observability_setting_id = each.value.gibq_observability_setting_id
  setting_binding_id            = each.value.setting_binding_id
  target                        = each.value.target
  deletion_policy               = each.value.deletion_policy
  labels                        = each.value.labels
  location                      = each.value.location
  product                       = each.value.product
  project                       = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

