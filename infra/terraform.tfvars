bucket_name = "dev-proj-1-remote-state-bucket"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-eu-central-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
eu_availability_zone = ["eu-central-1a", "eu-central-1b"]


public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDjBsmunUS+gp3PBbYyWd+PEac0zMKtLdteyPvcUbOd0keoQXANkDluYA9dsQ4PJVSAxNj9xIx2Thz9TcMCKm5EclV2KlhHIZBmArq5YjcN+6jBngyzzkX7r7Ql0rpMtJg3HwNRep5PYxcejZ09QVj3XsNVsa0uS4EUbg6bIZ9dYV16VBL+ILJDGH/AlvX6MIdIENmGzYKuC85VjkGA0NwkwT7slAqsKdw5TGyQjE7HGs7a+TlYCGqbr6kJkEUlao+QLuPZLQziScIXW5rgasGj7Bxd/3EISs+oOhGo7Bvamutoi7q8ipfulpwkFNjrGR/aeFa2SpJT6E/vr6NGr3M9 darsh@DARSHAN"
ec2_ami_id     = "ami-02003f9f0fde924ea"

ec2_user_data_install_apache = ""

domain_name = "jhooq.org"