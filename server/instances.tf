module "compute-instance-test-01" {
  source = "https://github.com/phoenix725909/gcloud/tree/258a27471fecf41a0ff880d14138fd4b9c691098/automation/modules/server"


  friendly_name         = "test01"
  domain                = "dragon"
  environment           = "prod"
  component             = "terraform"
  application           = "terraform-testing"
  description           = "the vm build through terrafrom"
  machine_state         = "RUNNING"
  tags                  = []
}
