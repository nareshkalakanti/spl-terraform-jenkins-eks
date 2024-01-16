terraform {
  backend "s3" {
    bucket         = "cicd-terraform-eks-tfstate"
    key            = "jenkins/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "cicd-terraform-eks-tf-state-lock"
  }
}
