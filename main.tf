module "vpc1" {
  source = "./vpc1"
  providers = {
    ibm = "ibm.us"
  }
}
