variable "resource_group_name" {}
variable "location" {}
variable "tenant_id" {}
variable "prefix" {}
variable "tags" {
  type    = map(string)
  default = {}
}
