provider "google" {
    
    project = "project-irshaq"
    zone = "us-central1-b"   
}

resource "google_compute_instance" "instance1" {

    name = "istance77"

    machine_type = "e2-micro" 
    desired_status = "TERMINATED"#SUSPENDED / RUNNING(default)
    allow_stopping_for_update = true

    boot_disk {
      
      initialize_params {
        image = "centos-stream-9"#"cos-cloud/cos-stable"
        size = 40
      }
      auto_delete = false #will not delete disk 
    }
    network_interface {
      network = "default"
      #subnetwork = ""
    }
    #lifecycle {
     # ignore_changes = [ machine_type,boot_disk,network_interface ]
    #}

}

