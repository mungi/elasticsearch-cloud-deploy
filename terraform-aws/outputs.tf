output "clients_dns" {
  value = aws_elb.es_client_lb.*.dns_name
}

output "vm_user" {
  value = var.client_user
}

output "vm_password" {
  value = random_string.vm-login-password.result
}

