module "demo-eks" {
  source = "../../modules/projects/eks"

  cluster_name      = "demo-eks"
  cidr_block_prefix = "172.31" # VPC CIDR block의 prefix. default 값에 맞추어 수정
}
