# tfstate를 저장할 backend 설정
terraform {
  backend "s3" {
    bucket = "moonblue-tfstate2"
    key    = "terraform.state"
    region = "us-east-1"
    # profile = "fastc"
  }
}
