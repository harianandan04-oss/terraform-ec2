provider "aws" {
region = "ap-southeast-2"
}
resource "aws_instance" "my_ec2" {
 ami = "ami-0e9262cbb2344d5ee"
 instance_type = "t3.micro"

 tags={
 Name = "GitHub-Created-EC2"
 }
 }
 output "public_ip" {
 value = aws_instance.my_ec2.public_ip
 }
