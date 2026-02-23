output "instance_id" {
  description = "ID of the compute engine instance"
  value       = google_compute_instance.vm.id
}

output "instance_name" {
  description = "Name of the compute engine"
  value       = google_compute_instance.vm.name
}

output "instance_internal_ip" {
  description = "Internal IP of the VM"
  value       = google_compute_instance.vm.network_interface[0].network_ip
}

output "instance_external_ip" {
  description = "External IP of the VM (if public IP enabled)"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}
