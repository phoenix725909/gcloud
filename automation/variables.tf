variable "component" {
	type = string
	}

variable "application" {
	type = string
	}

variable "friendly_name" {
	type = string
	validation {
	condition = length(var.friendly_name) < 16
	error_message = "The hostname must be 15 characters or less"
	}
	}

variable "machine_type" {
	type = string
	default = "n1-standard-2"
	}


variable "tags" {
	type = list(string)
	default = []
	}

variable "environment" {
	type = string
	
	validation{
	condition = can(contains(["prod", "dr", "dev", "test"], var.environment))
	error_message = "You may use: prod, dr, dev, test."
	}
	}
	
variable "description" {
	type = string
	}

variable "machine_state" {
	type = string
	default = "RUNNING"
	}

variable "domain" {
	type = string
	default = "dragon"
	}
	
