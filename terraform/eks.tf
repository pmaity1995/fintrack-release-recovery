resource "aws_eks_cluster" "fintrack" {
  name     = "fintrack-cluster"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = ["subnet-123", "subnet-456"]
  }
}