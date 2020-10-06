resource "aws_instance" "inalambricas" {
  ami           = "ami-0817d428a6fb68645"
  instance_type = "t2.micro"
  key_name      = "trabajo1"
  security_groups = [
        "inalambricas"
        
    ]
  
  tags = {
    Name = "inalambricas"
  }
  connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("trabajo1.pem")
      host = self.public_ip
      }
     provisioner "remote-exec" {
          inline = [
              "sudo apt-get update -y",
              "sudo apt-get install -y ca-certificates wget",
              "wget https://get.glennr.nl/unifi/install/unifi-5.13.32.sh",
          ]
      }
}