# Output variable definitions

output "COMPONENT_ip_address" {
    value       = lxd_container.COMPONENT.ip_address
    description = "IP Address of the COMPONENT container"
}
