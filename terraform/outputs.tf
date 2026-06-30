output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "product_svc_repo_url" {
  value = aws_ecr_repository.product_svc.repository_url
}

output "order_svc_repo_url" {
  value = aws_ecr_repository.order_svc.repository_url
}
