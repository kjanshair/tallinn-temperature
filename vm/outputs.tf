output "linux_vm_public_name" {
  value = module.linuxservers.public_ip_dns_name
  description = "format(\"Login with the username, %s\", var.admin_username)"
}