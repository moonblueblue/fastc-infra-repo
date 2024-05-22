module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-0abe368f514a7c3dd"

  private_subnets = ["subnet-006f88b4eebc465fb", "subnet-090bb9013cccefe11"]
  public_subnets  = ["subnet-0e01747a934debe7d", "subnet-03e5dd245ccf4738f"]
}
