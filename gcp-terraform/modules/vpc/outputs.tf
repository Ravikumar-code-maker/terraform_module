output "vpc_id" {
  description = "Id of the created VPC"
  value       = google_compute_network.vpc.id
}

output "vpc_name" {
  description = "Name of The created VPC"
   value      = google_compute_network.vpc.name
}

output "subnet_id" {
  description = "Id of the created subnet"
  value       = google_compute_subnetwork.vpc.id
}

output "subnet-cidr" {
  description = "CIDR range of the cretaed subnet"
  value       = google_compute_subnetwork.subnet.ip_cidr_range
}
