output "upper_name" {
  value = [for name in var.names: upper(name) if length(name) < 5]
}

output "bios_list" {
  value = [for name, role in var.hero_thousand_faces: "${name} is the ${role}"]
}

output "bios_map" {
  value = {for name, role in var.hero_thousand_faces:  name => "${name} is the ${role}"}
}