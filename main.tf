# VPC
data "aws_vpc" "main" {
  id = var.vpc_main_id
}

##Subnets
### Private
data "aws_subnets" "main_private" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_main_id]
  }

  tags = {
    "Attributes" = "private"
  }
}

### Public
data "aws_subnets" "main_public" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_main_id]
  }

  tags = {
    "Attributes" = "public"
  }
}

## Internet Gateway
data "aws_internet_gateway" "main" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_main_id]
  }
}

## Nat Gateway
data "aws_nat_gateways" "main" {
  vpc_id = var.vpc_main_id
  filter {
    name   = "state"
    values = ["available"]
  }

}

## Route Tables
data "aws_route_tables" "main_private" {
  vpc_id = var.vpc_main_id
  filter {
    name   = "tag:Attributes"
    values = ["private"]
  }
}

data "aws_route_tables" "main_public" {
  vpc_id = var.vpc_main_id
  filter {
    name   = "tag:Attributes"
    values = ["public"]
  }
}

## Security Groups
data "aws_security_groups" "main" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_main_id]
  }
}
