variable "resource_group_name" {}
variable "location" {}
variable "aks_name" {}
variable "tags" {
  type    = map(string)
  default = {}
}
