resource "local_file" "kube_config" {
  content  = data.template_file.kube_config.rendered
  filename = "${path.cwd}/.output/kube_config.yaml"
}

resource "local_file" "aws_auth" {
  content  = data.template_file.aws_auth.rendered
  filename = "${path.cwd}/.output/aws_auth.yaml"
}
