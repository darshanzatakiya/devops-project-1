terraform {
  backend "s3" {
    bucket = "dev-proj-1-remote-state-bucket-1122"
    key    = "devops-project-1-main/Jenkinsfile/terraform.tfstate"
    region = "eu-west-1"
  }
}