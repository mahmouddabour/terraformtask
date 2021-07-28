module "ec2-module" {
  source = "./mod/EC2"
  environment = var.environment
  name_tag = "${var.name_tag}"
  Privatea1block = var.Privatea1block
  Privatea2block = var.Privatea2block
  Publica1block = var.Publica1block
  VPCID = module.network-vpc-module.vpcsharedid
  secec2arn = module.securityG-module.secec2arn
}

module "securityG-module" {
  source = "./mod/secgroups"
  environment = var.environment
  name_tag = "${var.name_tag}"
  VPCID = module.network-vpc-module.vpcsharedid
}


module "network-vpc-module" {
  source = "./mod/network/VPC"
  environment = var.environment
  vpcblock = var.vpcblock 
  name_tag = "${var.name_tag}"
}

module "network-subnet-module" {
  source = "./mod/network/Subnets"
  environment = var.environment
  name_tag = "${var.name_tag}"
  VPCID = module.network-vpc-module.vpcsharedid
  availability_zone1 = var.availability_zone1
  availability_zone2 = var.availability_zone2
  Publica1block = var.Publica1block
  Publicb1block = var.Publicb1block
  Privatea1block = var.Privatea1block
  Privatea2block = var.Privatea2block
  Privateb1block = var.Privateb1block
  Privateb2block = var.Privateb2block
  Privateb3block = var.Privateb3block
  Privateb4block = var.Privateb4block
}

module "eip-module" {
 source = "./mod/network/EIP" 
}

module "nat-module" {
  source = "./mod/network/natgateway"
  awseipid = module.eip-module.lb
  awssubnetpublica1 = module.network-subnet-module.subnetPublica1id
  environment = var.environment
  name_tag = "${var.name_tag}"
  
}

module "internetgatway-module" {
source = "./mod/network/internetgateway"
   environment = var.environment
  name_tag = "${var.name_tag}" 
    VPCID = module.network-vpc-module.vpcsharedid
}

module "rt-module" {
  source = "./mod/network/routetable"
   environment = var.environment
  name_tag = "${var.name_tag}" 
  natid = module.nat-module.natid
 gwid = module.internetgatway-module.gwid
    VPCID = module.network-vpc-module.vpcsharedid
}

module "rtAss-module" {
  source = "./mod/network/routeAss"
  Publica1sub = module.network-subnet-module.subnetPublica1id
  Publicb1sub = module.network-subnet-module.subnetPublicb1id
  Privatea1sub = module.network-subnet-module.subnetPrivatea1id
  Privatea2sub = module.network-subnet-module.subnetPrivatea2id
  Privateb1sub = module.network-subnet-module.subnetPrivateb1id
  Privateb2sub = module.network-subnet-module.subnetPrivateb2id
  Privateb3sub = module.network-subnet-module.subnetPrivateb3id
  Privateb4sub = module.network-subnet-module.subnetPrivateb4id
  rtPublic = module.rt-module.rtPublic
  rtprivate = module.rt-module.rtprivate
  rtprivatesubnet = module.rt-module.rtprivatesubnet
}