module "vpc1" {
  source = "./vpc1"
  providers = {
    ibm = "ibm.us"
  }
  
  vpc2_ipv4_cidr_block = module.vpc2.zone2subnet1
  vpc2_peer_ip = module.vpc2.zone2vpnip
}

module "vpc2" {
  source = "./vpc2"
  providers = {
    ibm = "ibm.de"
  }
  
  vpc1_ipv4_cidr_block = module.vpc1.zone1subnet1
  vpc1_peer_ip = module.vpc1.zone1vpnip
}
