variable "dbname" {
  type = string
}

variable "username" {
  type = string
}

variable "appUser" {
  type = string
}

variable "readOnlyUser" {
  type = string
}

variable "readWriteUser" {
  type = string
}

variable "highAvailability-enable" {
  type = bool
}
variable "readReplicas" {
  type = number
}
 variable "instane-name" {
   type = string
 }

variable "storageSize" {
    type = string
  
}
