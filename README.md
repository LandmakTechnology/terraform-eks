
#  **<span style="color:green">Landmark Technologies, Ontario, Canada.</span>**
### **<span style="color:green">Contacts: +1437 215 2483<br> WebSite : <http://mylandmarktech.com/></span>**
### **Email: mylandmarktech@gmail.com**



## Terraform Installation And Setup In AWS EC2 Redhat Instnace.
##### Prerequisite
+ AWS Acccount.
+ Create Redhat EC2 Instnace.
+ Create IAM Role With Required Polocies.
   + VPCFullAccess
   + EC2FullAcces
   + S3FullAccess  ..etc
+ Attach IAM Role to EC2 Instance.

### Install Terraform version 0.12.26

``` sh
sudo yum install wget unzip -y
 wget https://releases.hashicorp.com/terraform/0.12.26/terraform_0.12.26_linux_amd64.zip
 sudo unzip terraform_0.12.26_linux_amd64.zip -d /usr/local/bin/
# Export terraform binary path temporally
 export PATH=$PATH:/usr/local/bin
# Add path permanently for current user.By Exporting path in .bashrc file at end of file.
$ vi .bashrc
   export PATH="$PATH:/usr/local/bin"
# Source .bashrc to reflect for current session
 source ~/.bashrc   
```
### Install Terraform version 1.0.11
``` sh
wget https://releases.hashicorp.com/terraform/1.0.11/terraform_1.0.11_linux_amd64.zip 
sudo unzip terraform_1.0.11_linux_amd64.zip -d /usr/local/bin/
export PATH=$PATH:/usr/local/bin
# Add path permanently for current user.By Exporting path in .bashrc file at end of file.
  vi .bashrc
   export PATH="$PATH:/usr/local/bin"
 Source .bashrc to reflect for current session
 source ~/.bashrc   

```
#### Clone terraform scripts
``` sh
$ git clone https://github.com/LandmakTechnology/terraform-eks
$ cd Terraform_Scripts
```
#### <span style="color:orange">Update Your Key Name in variables.tf file before executing terraform script.</span>
## Infrastructure As A Code

#### Create an EKS Kubernetes Cluster (VPC,Subnets,Route Tables, EKS Cluster, EKS NodeGroup, IAM, etc) As A Code Using Terraform Scripts
``` sh
# Initialise to install plugins
 cd /terraform-eks/EKS
 terraform init 
# Validate teffaform scripts
 terraform validate 
# Plan terraform scripts which will list resources which is going  be created.
 terraform plan 
# Apply to create resources
 terraform apply --auto-approve 
 
 ##  Destroy Infrastructure after...  
```sh
$ terraform destroy --auto-approve 
```
```
#### Create Infrastructure(VPC,Subnets,Route Tables,EC2 Instnaces ..etc) As A Code Using Terraform Scripts
``` sh
# Initialise to install plugins
$ terraform init VPC/
# Validate teffaform scripts
$ terraform validate VPC/
# Plan terraform scripts which will list resources which is going  be created.
$ terraform plan VPC/
# Apply to create resources
$ terraform apply --auto-approve VPC/
```

##  Destroy Infrastructure  
```sh
$ terraform destroy --auto-approve VPC/
```
