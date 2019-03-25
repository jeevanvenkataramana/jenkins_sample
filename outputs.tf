output "external_ip" {
  value = "${google_compute_instance.tomcat.network_interface.0.access_config.0.nat_ip}"	//external ip of the newly created instance
}
