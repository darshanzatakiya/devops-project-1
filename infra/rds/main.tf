variable "db_subnet_group_name" {}
variable "subnet_groups" {}
variable "rds_mysql_sg_id" {}
variable "mysql_db_identifier" {}
variable "mysql_username" {}
variable "mysql_password" {}
variable "mysql_dbname" {}

# RDS Subnet Group
resource "aws_db_subnet_group" "dev_proje_1_db_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_groups

  tags = {
    Name = "dev-proj-1-rds-subnet-group"
  }
}

# RDS MySQL Instance
resource "aws_db_instance" "default" {
  allocated_storage       = 10
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "8.0.36"                     # ✅ Updated to supported version
  instance_class          = "db.t3.micro"                # ✅ Updated to supported instance class
  identifier              = var.mysql_db_identifier
  username                = var.mysql_username
  password                = var.mysql_password
  vpc_security_group_ids  = [var.rds_mysql_sg_id]
  db_subnet_group_name    = aws_db_subnet_group.dev_proje_1_db_subnet_group.name
  db_name                 = var.mysql_dbname
  parameter_group_name    = "default.mysql8.0"           # ✅ Added parameter group
  skip_final_snapshot     = true
  apply_immediately       = true
  backup_retention_period = 0
  deletion_protection     = false
  publicly_accessible     = true                         # Optional: Allow public access if needed

  tags = {
    Name = "dev-proj-1-rds-instance"
  }
}
# variable "db_subnet_group_name" {}
# variable "subnet_groups" {}
# variable "rds_mysql_sg_id" {}
# variable "mysql_db_identifier" {}
# variable "mysql_username" {}
# variable "mysql_password" {}
# variable "mysql_dbname" {}

# # RDS Subnet Group
# resource "aws_db_subnet_group" "dev_proje_1_db_subnet_group" {
#   name       = var.db_subnet_group_name
#   subnet_ids = var.subnet_groups # replace with your private subnet IDs
# }

# resource "aws_db_instance" "default" {
#   allocated_storage       = 10
#   storage_type            = "gp2"
#   engine                  = "mysql"
#   engine_version          = "5.7"
#   instance_class          = "db.t2.micro"
#   identifier              = var.mysql_db_identifier
#   username                = var.mysql_username
#   password                = var.mysql_password
#   vpc_security_group_ids  = [var.rds_mysql_sg_id]
#   db_subnet_group_name    = aws_db_subnet_group.dev_proje_1_db_subnet_group.name
#   db_name                 = var.mysql_dbname
#   skip_final_snapshot     = true
#   apply_immediately       = true
#   backup_retention_period = 0
#   deletion_protection     = false
# }



