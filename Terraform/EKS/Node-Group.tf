resource "aws_eks_node_group" "node-group" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = var.node-group-name
  node_role_arn   = aws_iam_role.node-group-role.arn
  subnet_ids      = var.private_subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

  depends_on = [
   aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy_attachment,
   aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy_attachment,
   aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly_attachment
  ]
}