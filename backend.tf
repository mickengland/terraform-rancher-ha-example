terraform {
  backend "s3" {
    bucket = "robin-terraform"
    key = "rancher-dev.fstate"
    region = "us-east-2"
  }
}
