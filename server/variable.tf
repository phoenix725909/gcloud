variable "component" {
	type = string
	}

variable "application" {
	type = string
	}

variable "friendly_name" {
	type = string
	}

variable "machine_type" {
	type = string
	default = "n1-standard-2"
	}

variable "zone" {
	type = string
	}

variable "tags" {
	type = list(string)
	default = []
	}

variable "environment" {
	type = list(string)
	}
	
variable "description" {
	type = string
	}
