resource "aws_instance" "tfcltest" {
  
  ami = data.aws_ami.amazon-linux2.image_id
  instance_type = "t2.micro"
 
}

data "aws_ami" "amazon-linux2"{
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm-2.0.*"]
  }
}