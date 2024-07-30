resource "google_compute_instance" "compute_instance" {
  name           = var.friendly_name
  machine_type   = var.machine_type
  tags           = var.tags
  hostname       = join(".", ["${var.friendly_name}", "${var.domain}"])
  description    = var.description
  desired_status = var.machine_state
  labels = {
    environment = var.environment
    application = var.application
    component   = var.component
  }


  boot_disk {
    device_name = "${var.friendly_name}-boot"
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}
