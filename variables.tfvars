env                   = "dev"
aws-region            = "eu-central-1"
vpc-cidr-block        = "10.16.0.0/16"
vpc-name              = "testing-vpc"
igw-name              = "testing-igw"
pub-subnet-count      = 3
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub-availability-zone = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
pub-sub-name          = "testing-subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri-availability-zone = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
pri-sub-name          = "testing-subnet-private"
public-rt-name        = "testing-public-route-table"
private-rt-name       = "testing-private-route-table"
eip-name              = "testing-elasticip-ngw"
ngw-name              = "testing-ngw"
eks-sg                = "testing-eks-sg"
ec2-sg                = "testing-ec2-sg"

# EKS
is-eks-cluster-enabled     = true
cluster-version            = "1.32"
cluster-name               = "eks-cluster"
endpoint-private-access    = true
endpoint-public-access     = false
ondemand_instance_types    = ["t3a.medium"]
spot_instance_types        = ["c5a.large", "c5a.xlarge", "m5a.large", "m5a.xlarge", "c5.large", "m5.large", "t3a.large", "t3a.xlarge", "t3a.medium"]
desired_capacity_on_demand = "1"
min_capacity_on_demand     = "1"
max_capacity_on_demand     = "5"
desired_capacity_spot      = "1"
min_capacity_spot          = "1"
max_capacity_spot          = "10"
addons = [
  {
    name    = "vpc-cni",
    version = "v1.19.2-eksbuild.1"
  },
  {
    name    = "coredns"
    version = "v1.11.4-eksbuild.2"
  },
  {
    name    = "kube-proxy"
    version = "v1.32.0-eksbuild.2"
  },
  {
    name    = "aws-ebs-csi-driver"
    version = "v1.40.0-eksbuild.1"
  }
  # Add more addons as needed
]

# IAM
ec2-iam-role             = "ec2-ssm-role"
ec2-iam-role-policy      = "ec2-ssm-role-policy"
ec2-iam-instance-profile = "ec2-ssm-instance-profile"

# EC2
ec2-name = "testing-eks-bastion-server"