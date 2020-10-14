//Create key pair. Instead of exposing the public key, best practice is to call from file by using file function in Terraform
resource "aws_key_pair" "myTerraformKeyPair" {
   key_name = "terraformKey"
   public_key = "${file("/home/ubuntu/.ssh/id_rsa.pub")}"
}
