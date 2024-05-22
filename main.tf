module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-05ce7ecd4c3809f25"

  private_subnets = ["subnet-062493e6fc26e44cd", "subnet-0e368500d7853fe15"]
  public_subnets  = ["subnet-0551a9316cd96dc31", "subnet-01d1bfc7bdff657b7"]
}
