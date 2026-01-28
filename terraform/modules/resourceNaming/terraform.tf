terraform {
  required_version = ">= 1.14"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.8"
    }
  }
}