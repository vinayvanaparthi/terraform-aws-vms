output "ansible_vm_ip" {
  value = aws_instance.ansible_vm.public_ip
}

output "test_vms_ips" {
  value = [for vm in aws_instance.test_vms : vm.public_ip]
}