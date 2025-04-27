resource "google_compute_instance" "default" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = "us-east1-b"
 project = "load-balancer-452617"
  tags = ["foo", "bar"]
allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}



resource "google_compute_instance" "default-2" {
  name         = "terraform-instance-one"
  machine_type = "n2-standard-2"
  zone         = "us-east1-b"
  project = "load-balancer-452617"
  tags = ["foo", "bar", "baz"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}