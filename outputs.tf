output "cloudwatch_event_permissions_id" {
  description = "Map of id values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_event_permissions_action" {
  description = "Map of action values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => v.action if v.action != null && length(v.action) > 0 }
}
output "cloudwatch_event_permissions_condition" {
  description = "Map of condition values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "cloudwatch_event_permissions_event_bus_name" {
  description = "Map of event_bus_name values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => v.event_bus_name if v.event_bus_name != null && length(v.event_bus_name) > 0 }
}
output "cloudwatch_event_permissions_principal" {
  description = "Map of principal values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "cloudwatch_event_permissions_region" {
  description = "Map of region values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_event_permissions_statement_id" {
  description = "Map of statement_id values across all cloudwatch_event_permissions, keyed the same as var.cloudwatch_event_permissions"
  value       = { for k, v in aws_cloudwatch_event_permission.cloudwatch_event_permissions : k => v.statement_id if v.statement_id != null && length(v.statement_id) > 0 }
}

