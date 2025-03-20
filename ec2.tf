module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "mykeypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-b62fb495"]
  subnet_id              = "subnet-6b6bac0d"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}