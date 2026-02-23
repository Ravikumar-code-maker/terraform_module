resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = google_compute_network.vpc.id

  allow {
     protocal = "tcp"
     prots    = ["22"]
 }
   sourec_ranges = ["0.0.0.0/0"]
}

# Allow internal traffic between all subnets

resource "google_compute-firewall" "allow_http_https" {
  name    = "allow-http-https"
  network = google_compute_network.vpc.id

  allow {
    protocol = "tcp"
    ports    = ["80","443"]
  }
  source_ranges = ["0.0.0.0/0"]
}

# Allow internal traffic between all subnets
resource "google_compute_firewall" "allow_internal" {
  name    = "allow-internal"
  network = google_compute_network.vpc.id

  allow {
    protocol = "icmp"
  }
   allow {
     protocol = "tcp"
     ports    = ["0-65535"]
   }
   allow {
     protocol = "udp"
     ports    = ["0-65535"]
   }
     # Replace with your internal CIDR range if needed
  source_ranges = [var.internal_cidr]
}

