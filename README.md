<!-- BEGIN_TF_DOCS -->
# Sync network module
From sync module layer, contains all network resources information.

# Example

```hcl
# Comment
module "sync_network" {

}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.30.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | AWS Region | `string` | n/a | yes |
| <a name="input_vpc_main_id"></a> [vpc\_main\_id](#input\_vpc\_main\_id) | Main VPC id | `string` | n/a | yes |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_owner_id"></a> [owner\_id](#output\_owner\_id) | ID of the AWS account that owns the Main VPC. |
| <a name="output_subnets_main_private_ids"></a> [subnets\_main\_private\_ids](#output\_subnets\_main\_private\_ids) | List of all the main private subnet ids. |
| <a name="output_subnets_main_public_ids"></a> [subnets\_main\_public\_ids](#output\_subnets\_main\_public\_ids) | List of all the main public subnet ids. |
| <a name="output_vpc_main_arn"></a> [vpc\_main\_arn](#output\_vpc\_main\_arn) | ARN of Main VPC |
| <a name="output_vpc_main_cidr_block"></a> [vpc\_main\_cidr\_block](#output\_vpc\_main\_cidr\_block) | CIDR block for the Main VPC |
| <a name="output_vpc_main_enable_dns_hostnames"></a> [vpc\_main\_enable\_dns\_hostnames](#output\_vpc\_main\_enable\_dns\_hostnames) | Whether or not the Main VPC has DNS hostname support |
| <a name="output_vpc_main_enable_dns_support"></a> [vpc\_main\_enable\_dns\_support](#output\_vpc\_main\_enable\_dns\_support) | Whether or not the Main VPC has DNS support |
| <a name="output_vpc_main_enable_network_address_usage_metrics"></a> [vpc\_main\_enable\_network\_address\_usage\_metrics](#output\_vpc\_main\_enable\_network\_address\_usage\_metrics) | Whether Network Address Usage metrics are enabled for your Main VPC |
| <a name="output_vpc_main_instance_tenancy"></a> [vpc\_main\_instance\_tenancy](#output\_vpc\_main\_instance\_tenancy) | Allowed tenancy of instances launched into the selected VPC. May be any of 'default', 'dedicated', or 'host'. |
| <a name="output_vpc_main_ipv6_association_id"></a> [vpc\_main\_ipv6\_association\_id](#output\_vpc\_main\_ipv6\_association\_id) | Association ID for the IPv6 CIDR block. |
| <a name="output_vpc_main_ipv6_cidr_block"></a> [vpc\_main\_ipv6\_cidr\_block](#output\_vpc\_main\_ipv6\_cidr\_block) | IPV6 CIDR block for the Main VPC |
| <a name="output_vpc_main_main_route_table_id"></a> [vpc\_main\_main\_route\_table\_id](#output\_vpc\_main\_main\_route\_table\_id) | ID of the main route table associated with this Main VPC. |

# Footer

<!-- END_TF_DOCS -->