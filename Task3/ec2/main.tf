module "ec2_instance" {
  source                      = "boldlink/ec2/aws"
  version                     = "2.0.7"
  name                        = var.name
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  vpc_id                      = local.vpc_id
  availability_zone           = local.azs
  associate_public_ip_address = true

  tags = merge({ Name = var.name }, var.tags)
}

resource "aws_eip" "static_ip" {
  instance = module.ec2_instance.id
  vpc      = true
}
