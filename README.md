# contoso meow-application project summary
1. Contoso corporation is planning to lauch "Meow App" to expand their pet food business through digital transformation.
2. As discussed in the meeting, contoso's CTO wants to leverage their application in the cloud and using automation practice to offload the burdens of operation matters over time.
3. HelloCloud awarded the tender for this project and proposed to leverage terraform cloud and AWS for the infrastructure automation.

## procedure
1. create Github repo : (testing,dev,prod)
2. Terraform Cloud : Create Organization
   - 2.1 Create testing workspace

3. Github and terraform API integration
   - 3.1 Connect to VCS (TFC)
   - 3.2 Setup Provider (TFC)
   - 3.3 Setting > Developer Setting > Register a new OAuth application （VCS)
   - 3.4 Copy information from VCS and paste to TFC (vice versa) , Generate secret key from Github

4. Terraform and AWS API integration
   - 4.1 Create iam role and attach to administrator policies (AWS management console)
   - 4.2 Create access key for contoso-testing-management and download the access key file.
   - 4.3 Create project (TFC)
   - 4.3 Create test file (VCS)
   - 4.5 Create workspace (TFC)
        Version Control Workflow > Choose organization > Choose the correct repo > Advanced options (choose Auto Apply)
   - 4.6 Configure environment variables for AWS access key and secret access key. (TFC)
```        
        AWS_ACCESS_KEY_ID : xxxxxxxx  (select case sensitive)
        AWS_SECRET_ACCESS_KEY : xxxxxxxx 
```
   - 4.7 Configure terraform VS code
```
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/github.com.contoso-testing
    ssh -T git@github.com

    git clone git@github.com:ei-thet/contoso-testing.git contoso-testing
    cd contoso-testing
    git remote -v
    git status
    git add .
    git commit -m "Update README"
    git push
```    

5. create AWS Role
   - 5.1 touch main.tf versions.tf outputs.tf variables.tf
   - 5.2 push to Github and TFC auto trigger.

6. hashicat-aws application
   - 6.1 Clone the hashicat app
    git clone https://github.com/hashicorp/hashicat-aws.git hashicat-aws-contoso-testing

7. split the terraform meow app.
   - 7.1 touch meow-vpc.tf meow-sg.tf meow-igw-rt.tfMacBook-Pro:meow-ap
  


   ![Infrastructure-Automation-Leveraging-Terraform-Cloud-and-AWS](https://github.com/eimon-github-testing/contoso-testing/assets/142704627/1f74bb22-cf68-4968-b9e1-a42c3524ecd0)

