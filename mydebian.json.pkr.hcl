source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "b1g3hhpc4sj7fmtmdccu"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "e9bang8tpj4mbo92gvr6"
  token               = "y0_AgAAAAAEOSJRAATuwQAAAAECA4LaAAAn69ynSlNBZZ_piRGikdeekQ3lBA"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = ["echo 'hello from packer'"]
  }

}
