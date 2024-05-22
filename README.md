# Terraform AWS Custom VPC Infrastructure

This Terraform configuration sets up a custom Virtual Private Cloud (VPC) infrastructure on AWS, including a public subnet, security groups, internet gateway, route table, and EC2 instances.

## Overview

The configuration creates a custom VPC with a specified CIDR block and instance tenancy. It also sets up a public subnet within the VPC, allowing instances launched in this subnet to have public IP addresses. Security groups are defined to control inbound and outbound traffic to the EC2 instances. An internet gateway is attached to the VPC to enable outbound internet access for instances in the public subnet. Finally, EC2 instances are launched in the public subnet using an Ubuntu AMI.

## Prerequisites

Before using this Terraform configuration, ensure you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS credentials configured either via environment variables or AWS CLI.
- Basic understanding of Terraform and AWS services.

## Diagram
![IaC AWS Full Infrastructure](https://github.com/nessamutia/Infrastructure-on-AWS-with-Terraform/assets/137209546/dd5453d9-86c5-4a84-84a4-e9f309e93978)
