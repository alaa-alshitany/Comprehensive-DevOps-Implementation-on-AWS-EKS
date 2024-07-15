output "vpc_id" {
  value = aws_vpc.vpc.id
  description = "vpc_id"
}

output "private_subnets" {
  value = aws_subnet.private_subnets[*].id
}

output "public_subnets" {
  value = aws_subnet.public_subnets[*].id
}

output "security_group_id" {
  value = aws_security_group.sg-eks_cluster.id
}