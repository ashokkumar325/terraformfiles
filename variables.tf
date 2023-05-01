variable "cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "pub_sub_cidr" {
    type = string
}
variable "pra_sub_cidr" {
    type = string
}
variable "tags" {
    type = map
}
 variable "internet_cidr" {
  type = string
}
variable "internal" {
    type = bool
}
variable "lb" {
    type = string
} 
variable "subnet_id" {
    type = list
}
variable "security_groups" {
  type = list
}
variable "idel-timeout" {
    type = number
}