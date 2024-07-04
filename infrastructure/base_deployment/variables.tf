variable "resource_group_name" {}
variable "location" {}
variable "prefix" {}
variable "tenant_id" {}
variable "aks_name" {}
variable "acr_name" {}
variable "tags" {
  type    = map(string)
  default = {}
}
