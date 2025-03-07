locals {
  subnet_cidr = [
    for s in data.aws_subnet.private : s.cidr_block
  ]

  subnet_az = [
    for az in data.aws_subnet.private : az.availability_zone
  ]

  subnet_id = [
    for i in data.aws_subnet.private : i.id
  ]

  private_subnets = local.subnet_id[0]
  azs             = local.subnet_az[0]
  private_ips = [
    cidrhost(flatten(local.subnet_cidr)[0], 5),
    cidrhost(flatten(local.subnet_cidr)[0], 7),
    cidrhost(flatten(local.subnet_cidr)[0], 10)
  ]
  vpc_id = data.aws_vpc.supporting.id
}
