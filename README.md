# Terraform AWS Custom VPC Infrastructure

This Terraform configuration sets up a custom Virtual Private Cloud (VPC) infrastructure on AWS, including a public subnet, security groups, internet gateway, route table, and EC2 instances.

## Overview

This setup is typically used to expose specific EC2 instances to the internet, often for web servers, while controlling and securing the traffic that can reach them using both Network ACLs and Security Groups.

## Prerequisites

Before using this Terraform configuration, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS credentials configured either via environment variables or AWS CLI.
- Basic understanding of Terraform and AWS services.

## Diagram
![IaC AWS Full Infrastructure](https://github.com/nessamutia/Infrastructure-on-AWS-with-Terraform/assets/137209546/dd5453d9-86c5-4a84-84a4-e9f309e93978)

- Traffic from the internet can enter the VPC through the Internet Gateway.
- The route table (rt_custom_internet) directs the traffic to the appropriate IP ranges (subnets).
- The Network ACL filters the traffic at the subnet level based on its rules.
- Once past the Network ACL, the security group around the EC2 instances filters the traffic at the instance level.
- Finally, the traffic reaches the EC2 instances in the public subnet.
  
