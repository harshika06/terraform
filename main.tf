# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
  ami           = "ami-0984f4b9e98be44bf"  # Replace with the actual AMI ID you want to use
  instance_type = "t2.micro"             # Free-tier eligible instance type
  tags = {
    Name = "MyEC2Instance"              # Tag to identify the EC2 instance
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-nameharshika"     # Use a globally unique name for your S3 bucket
  acl    = "private"                   # Set bucket ACL to private for security
}

