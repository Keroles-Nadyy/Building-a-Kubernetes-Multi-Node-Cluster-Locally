resource "multipass_instance" "master_node" {
  name = "Master"
  cpus   = 2
  memory = "1G"
  disk   = "4G"
#   image  = "20.04"  #latest cloud_init = <<-EOF

  # cloudinit_file = "./instances_cloud-init.yaml"
}

# output "master_node_ip" {
#   value = multipass_instance.master_node.ipv4
# }

resource "multipass_instance" "worker_node" {
  name = "Worker"
  cpus   = 2
  memory = "512M"
  disk   = "4G"
  # cloudinit_file = "./instances_cloud-init.yaml"
}