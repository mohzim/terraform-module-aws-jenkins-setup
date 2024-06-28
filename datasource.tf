# Get AMI Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "ami" {
  name = "/terraform/jenkins/ami" 
}

# Get password from AWS Secret
#data "aws_secretsmanager_secret" "by-name" {
#  name = "example"
#}

# Get EC2 Key Pair Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "ec2-key-name" {
  name = "/terraform/cx/ec2-key-name" 
}

# Get AMI Value from AWS System Manager Parameter Store
data "aws_ssm_parameter" "instance_type" {
  name = "/terraform/jenkins/instance-type" 
}