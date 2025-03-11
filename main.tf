resource "tls_private_key" "hellocloud_sg_keypair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "hc_master_ec2_publickey" {
  key_name   = "hc-master-ec2-publickey"
  public_key = tls_private_key.hellocloud_sg_keypair.public_key_openssh
  #   public_key = var.publickey_openssh
}

resource "local_sensitive_file" "myfile" {
  content         = tls_private_key.hellocloud_sg_keypair.private_key_openssh
  filename        = "${path.module}/generated/hc-master-ec2-privatekey.pem"
  file_permission = "0422"
}