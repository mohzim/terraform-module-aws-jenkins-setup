# Terraform Module to setup Jenkins in AWS EC2
This is a respository to setup Jenkins in AWS EC2 instance using Terraform.  


## Prerequisite
1. [Download](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and [configure](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-quickstart.html) AWS CLI for your AWS Account. 
2. [Download](https://git-scm.com/downloads) Git. 
3. [Download](https://developer.hashicorp.com/terraform/install?product_intent=terraform) and install Terraform. 
4. Set these values in AWS Systems Manager Parameter Store

<table>
<tr><td>Name</td><td>Sample Value</td></tr>
<tr><td>/terraform/jenkins/ami</td><td>ami-123456789</td></tr>
<tr><td>/terraform/jenkins/instance-type </td><td>t2.small</td></tr>
<tr><td>/terraform/cx/ec2-key-name</td><td>Your Ec2 Key Name</td></tr>
<table>

## Steps
1. Download the repository and go to the base folder 

    `cd terraform-aws-3tier-demo`
2. Initialize terraform

    `terraform init`
3. Verify resource creation
    
    `terraform plan`
4. Create resources in AWS
    
    `terraform apply`

5. Access Jenkins through the URL

6. Destroy resources in AWS


    `terraform destroy`


## To Do List
1. Automate setup for Jenkins CLI
2. Automate installation for Jenkin plugins through CLI - SonarQube Server/plugin, Snyk and code linting plugins. 
3. Update Readme
4. Convert script into Module
5. Use tfvars
6. Create for multiple env - Dev, QA, PROD, etc.
7. Harden AWS Resources and Terraform Script. 


## Notes
1. Setting up Jenkins on AWS Amazon Linux: https://www.jenkins.io/doc/tutorials/tutorial-for-installing-jenkins-on-AWS/
2. Setting up Jenkins CLI to install plugins: https://www.jenkins.io/doc/book/managing/cli/
3. Setting up Snyk in Jenkins CI Pipeline: https://docs.snyk.io/scm-ide-and-ci-cd-workflow-and-integrations/snyk-ci-cd-integrations/jenkins-plugin-integration-with-snyk
