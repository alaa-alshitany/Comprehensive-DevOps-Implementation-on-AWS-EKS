output "endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.cluster.certificate_authority[0].data
}

output "ecr-repo-url" {
  value = aws_ecr_repository.ecr_repo.repository_url
}