variable "user_names" {
  description = "Create IAM users with these names"
  type = list(string)
  default = ["neo", "trinity", "morpheus"]
}

variable "custom_tags" {
  description = "Custom tags to set in our resources"
  type = map(string)
  default = {}
}