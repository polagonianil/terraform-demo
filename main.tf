# main.tf

# Specify the Terraform version
terraform {
  required_version = ">= 1.0.0"
}


resource "aws_instance" "my_ec2" {
  ami           = "ami-0ae8f15ae66fe8cda" # Replace with your preferred AMI ID
  instance_type = "t2.micro"              # Instance type

  tags = {
    Name = "MyEC2Instance"
  }
}

# Output the public IP of the instance
output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}

