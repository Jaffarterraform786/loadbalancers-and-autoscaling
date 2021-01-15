variable "count" {
  default = 1
}
variable "region" {
  description = "AWS region for hosting our your network"
  default     = "ap-south-1"
}
variable "public_key_path" {
  //downlaod the pemmkey from lauching ec2 server put in in paTH
  description = "Enter the path to the SSH Public Key to add to AWS."
  default     = "/home/ratul/developments/devops/keyfile/hellokey.pem"
}
variable "key_name" {
  description = "Key name for SSHing into EC2"
  default     = "hellokey"
}
variable "amis" {
  description = "Base AMI to launch the instances"
  default = {
    ap-south-1 = "ami-8da8d2e2"
  }
}
data "aws_availability_zones" "all" {}
