module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-049546997c54c88f1"

  private_subnets = ["subnet-01bebbe2877a98cd9", "subnet-0fbf41cb10091d8ef"]
  public_subnets  = ["subnet-0e6d5194aa3e9b245", "subnet-0b20608e4275d5655"]
}
