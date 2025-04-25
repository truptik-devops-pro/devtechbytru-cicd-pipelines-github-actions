terraform {
  backend "s3" {
    bucket         = "my-tf-state-bucket"
    key            = "ec2-demo/terraform.tfstate"
    region         = "eu-west-2"
    encrypt        = true
    use_lockfile   = true
  }
}
