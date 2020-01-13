# tf-module-network

Módulo de construção da rede na AWS com Terraform

Este módulo basicamente cria os seguintes recursos:

- VPC
- Subnet Pública
- Internet Gateway
- Route Table

Uso

```bash
module "vpc-main" {
  source                  = "git::https://github.com/pcmalves/tf-module-network.git"
  availability_zone       = "${var.availability_zone}"
  destination_cidr_block  = "${var.destination_cidr_block}"
  enable_dns_hostnames    = "${var.enable_dns_hostnames}"
  enable_dns_support      = "${var.enable_dns_support}"
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
  subnet_cidr_block       = "${var.subnet_cidr}"
  vpc_cidr_block          = "${var.vpc_cidr_block}"
  tag_name                = "${var.name}"
}
```

Meu contato no [Linkedin](https://www.linkedin.com/in/pcmalves/)
---