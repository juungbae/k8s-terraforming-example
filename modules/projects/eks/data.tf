locals {
  zone_names = [
    data.aws_availability_zone.a.name,
    data.aws_availability_zone.c.name
  ]
}

// ap-northeast-2b도 쓸 수 있지만 2b는 t2.micro를 못 써서 제외
data "aws_availability_zone" "a" {
  name = "ap-northeast-2a"
}

data "aws_availability_zone" "c" {
  name = "ap-northeast-2c"
}

data "template_file" "kube_config" {
  template = file("${path.module}/templates/kube_config.yaml.template")

  vars = {
    CERTIFICATE     = aws_eks_cluster.eks.certificate_authority[0].data
    MASTER_ENDPOINT = aws_eks_cluster.eks.endpoint
    CLUSTER_NAME    = var.cluster_name
  }
}

data "template_file" "aws_auth" {
  template = file("${path.module}/templates/aws_auth.yaml.template")

  vars = {
    rolearn = aws_iam_role.eks_worker.arn
  }
}
