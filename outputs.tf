# VPC
output "vpc_main_arn" {
  description = "ARN of Main VPC"
  value       = data.aws_vpc.main.arn
}

output "vpc_main_enable_dns_support" {
  description = "Whether or not the Main VPC has DNS support"
  value       = data.aws_vpc.main.enable_dns_support
}

output "vpc_main_enable_dns_hostnames" {
  description = "Whether or not the Main VPC has DNS hostname support"
  value       = data.aws_vpc.main.enable_dns_hostnames
}

output "vpc_main_instance_tenancy" {
  description = "Allowed tenancy of instances launched into the selected VPC. May be any of 'default', 'dedicated', or 'host'."
  value       = data.aws_vpc.main.instance_tenancy
}

output "vpc_main_ipv6_association_id" {
  description = "Association ID for the IPv6 CIDR block."
  value       = data.aws_vpc.main.ipv6_association_id
}

output "vpc_main_main_route_table_id" {
  description = "ID of the main route table associated with this Main VPC."
  value       = data.aws_vpc.main.main_route_table_id
}

output "owner_id" {
  description = "ID of the AWS account that owns the Main VPC."
  value       = data.aws_vpc.main.owner_id

}

output "vpc_main_cidr_block" {
  description = "CIDR block for the Main VPC"
  value       = data.aws_vpc.main.cidr_block
}

output "vpc_main_ipv6_cidr_block" {
  description = "IPV6 CIDR block for the Main VPC"
  value       = data.aws_vpc.main.ipv6_cidr_block
}

## Subnets
### Private
output "subnets_main_private_ids" {
  description = "List of all the main private subnet ids."
  value       = data.aws_subnets.main_private.ids
}

### Public
output "subnets_main_public_ids" {
  description = "List of all the main public subnet ids."
  value       = data.aws_subnets.main_public.ids
}

## Route Tables
### Private
output "route_tables_main_private" {
  description = "List of all the private route table ids"
  value       = data.aws_route_tables.main_private
}
### Public
output "route_tables_main_public" {
  description = "List of all the public route table ids"
  value       = data.aws_route_tables.main_public
}

## Internet Gateway
output "internet_gateway_main_arn" {
  description = "ARN of the Internet Gateway."
  value       = data.aws_internet_gateway.main.arn
}

## NAT Gateway
output "nat_gateway_main_ids" {
  description = "List of all the NAT gateway ids."
  value       = data.aws_nat_gateways.main
}

## Security Groups
output "security_groups_main" {
  description = "Return a sg attributes list: i.e: arns,id,ids,vpc_ids"
  value       = data.aws_security_groups.main
}
