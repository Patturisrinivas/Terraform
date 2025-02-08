locals {
  ami_id = data.aws_ami.joindevops.id
  instance_type = "t2.micro"
}