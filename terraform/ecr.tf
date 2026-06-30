resource "aws_ecr_repository" "product_svc" {
  name                 = "product-svc"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "order_svc" {
  name                 = "order-svc"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}
