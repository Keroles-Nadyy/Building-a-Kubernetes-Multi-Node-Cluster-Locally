resource "multipass_instance" "master_node" {
  name = "Master"
  cpus   = 2
  memory = "1G"
  disk   = "4G"
#   image  = "20.04"  #latest cloud_init = <<-EOF
}

resource "multipass_instance" "worker_node" {
  name = "Worker"
  cpus   = 2
  memory = "512M"
  disk   = "4G"
}