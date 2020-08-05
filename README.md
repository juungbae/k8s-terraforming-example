# EKS Terraforming

- 해당 자료를 엄청 많이 참조했습니다... [링크](https://www.44bits.io/ko/post/terraform_introduction_infrastrucute_as_code)

## 주의사항

AWS access key와 secret key를 적용하지 않으면 자동으로 default AWS 설정을 가져다 씁니다.
개인의 AWS 계정을 사용하고 싶으시면 `ap-northeast-2/demo-eks/configuration.tf` 의 aws provider에 `access_key` 와 `secret_key`를 추가 해 주면 됩니다.

## 실행방법

terraform이 설치되어 있다고 가정합니다. 테라폼은 버전의 영향을 받으므로 tfenv를 이용하여 테라폼을 설치하는 것을 추천합니다.

```
cd ap-northeast-2/demo-eks
terraform init
terraform apply
```

테스트가 끝났다면 `terraform destroy`를 이용해서 꼭 삭제해 주세요 (돈 나가요)
