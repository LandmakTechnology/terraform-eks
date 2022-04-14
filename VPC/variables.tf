/* @Landmark Technologies
 Demo VPC varaibles file. Make sure you replace key_name value
 with your key name which  you have in given aws_region.
*/
variable "aws_region" {
  default = "us-west-2"
}
variable "vpc_cidr" {
  default = "10.0.0.0/20"
}
variable "subnets_cidr" {
  type    = list(string)
  default = ["10.0.0.0/25", "10.0.0.128/25,"10.0.1.0/24"]
}
variable "availability_zones" {
  type    = list(string)
  default = ["us-west-2a", "us-west-ca", "us-west-2b"]
}
variable "ubuntuami" {
  default = "ami-0306d46d05aaf8663"
}
variable "redhatami" {
  default = "ami-0b28dfc7adc325ef4"
}
variable "key_name" {
  default = "testkey"
}
