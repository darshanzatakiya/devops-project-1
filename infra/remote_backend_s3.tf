terraform {
  backend "s3" {
    bucket = "dev-proj-1-jenkins-remote-state-bucket-112233"
    key    = "devops-project-1-main/Jenkinsfile/terraform.tfstate"
    region = "eu-west-1"
  }
}