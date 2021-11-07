output "string_with_loop" {
  value = <<EOF
  %{~ for name in var.names ~}
    ${name}
  %{~ endfor ~}
  EOF
}