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
  default = "ami-08353a25e80beea3e"
}
variable "redhatami" {
  default = "ami-008a8487adc2b32ec"
}
variable "key_name" {
  default = "testkey"
}
