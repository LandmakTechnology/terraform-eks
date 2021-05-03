/* @Landmark Technologies
 Demo VPC varaibles file. Make sure you replace key_name value
 with your key name which  you have in given aws_region.
*/
variable "aws_region" {
  default = "us-east-2"
}
variable "vpc_cidr" {
  default = "172.0.0.0/24"
}
variable "subnets_cidr" {
  type    = list(string)
  default = ["172.0.0.0/25", "172.0.0.128/25"]
}
variable "availability_zones" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b"]
}
variable "ubuntuami" {
  default = "ami-0b9064170e32bde34"
}
variable "redhatami" {
  default = "ami-03d64741867e7bb94"
}
variable "key_name" {
  default = "testkey"
}
