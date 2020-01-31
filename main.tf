module "vpc1" {
  source = "./vpc1"
  providers = {
    ibm = "ibm.us"
  }
  
  ssh_public_key = ${var.ssh_public_key}
}
