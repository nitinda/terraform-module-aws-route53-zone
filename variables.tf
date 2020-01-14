variable "name" {
  description = "This is the name of the hosted zone."
}

variable "comment" {
  description = "A comment for the hosted zone."
}

variable "force_destroy" {
  description = "Whether to destroy all records in the zone when destroying the zone"
  default     = false
  type        = bool
}

variable "tags" {
  description = "A mapping of tags to assign to the zone."
  type        = map(string)
}

variable "vpc" {
  description = "Configuration block(s) specifying VPC(s) to associate with a private hosted zone"
  type        = any
  default     = {}
}
