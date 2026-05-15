module "vpc" {

  source = "./modules/vpc"

  vpc_cidrs = var.vpc_cidrs

  prefix = var.prefix

  environment = var.environment

  common_tags = local.common_tags
}

module "subnet" {

  source = "./modules/subnet"

  subnets = var.subnets

  vpc_id = values(module.vpc.vpc_ids)[0]

  prefix = var.prefix

  environment = var.environment

  common_tags = local.common_tags
}

module "sg" {

  source = "./modules/sg"

  sg_count = 2

  vpc_id = values(module.vpc.vpc_ids)[0]

  ingress_rules = [
    {
      port = 22
      cidr = ["0.0.0.0/0"]
    },
    {
      port = 80
      cidr = ["0.0.0.0/0"]
    }
  ]

  prefix = var.prefix

  environment = var.environment

  common_tags = local.common_tags
}

module "ec2" {

  source = "./modules/ec2"

  instance_count = 2

  ami = "ami-0f58b397bc5c1f2e8"

  instance_type = "t3.micro"

  subnet_id = values(module.subnet.subnet_ids)[0]

  sg_ids = module.sg.sg_ids

  prefix = var.prefix

  environment = var.environment

  common_tags = local.common_tags
}

module "s3" {

  source = "./modules/s3"

  bucket_count = 2

  prefix = var.prefix

  environment = var.environment

  common_tags = local.common_tags
}