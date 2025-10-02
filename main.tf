    provider "aws" {
      region = "us-east-1" # Replace with your desired region
    }
    resource "aws_vpc" "sonarqube_vpc" {
      cidr_block = "10.0.0.0/16"
      tags = {
        Name = "sonarqube-vpc"
      }
    }

    resource "aws_subnet" "sonarqube_subnet" {
      vpc_id     = aws_vpc.sonarqube_vpc.id
      cidr_block = "10.0.1.0/24"
      availability_zone = "us-east-1a" # Adjust AZ
      tags = {
        Name = "sonarqube-subnet"
      }
    }

    resource "aws_security_group" "sonarqube_sg" {
      vpc_id = aws_vpc.sonarqube_vpc.id
      ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"] # Restrict to your IP range for security
      }
      ingress {
        from_port   = 9000 # SonarQube default port
        to_port     = 9000
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"] # Restrict as needed
      }
      egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
      tags = {
        Name = "sonarqube-security-group"
      }
    }
