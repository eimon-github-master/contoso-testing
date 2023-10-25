# Contoso corporation is planning to lauch "Meow App" to expand their pet food business through digital transformation.
# As discussed in the meeting, contoso's CTO wants to leverage their application in the cloud and using automation # practice to offload the burdens of operation matters over time.
# HelloCloud awarded the tender for this project and proposed to leverage terraform cloud and AWS for the infrastructure #automation.
## procedure
1. Create Githug repo : (testing,dev,prod)
2. Terraform Cloud : Create organization 
   2.1 Create testing workspace

3. Githug and Terraform API integration
    3.1 Connect to VCS(TFC)
    3.2 Setup Provider(TFC)
    3.3 Setting > Developer setting > Register a new OAuth application 
    3.4 Copy info from VCS(github to tfc first) and paste to TFC(vice versa),Generate a new client secret

4. Terraform and AWS API integration
   4.1 Create iam role and attach to administrator policies (AWS console)
   4.2 Create access key for contoso-testing-management and download the access key file.
   4.3 Create project (TFC)
   4.4 Create test file.(VCS)
   4.4 Create workspace (TFC) 
       Version Control workflow > Choose orgnization > Choose the correct repo
   4.6 Configure enviroment variables for AWS access key and secret access key.(TFC)
        AWS_ACCESS_KEY_ID : XXXXXXX
        AWS_SECRET_ACCESS_KEY : XXXXXX
   4.7  Configure terraform VS code
        eval "$(ssh-agent -s)"
        ssh-add ~/.ssh/github.com.eimon-github-testing
        ssh -T git@github.com

        git clone git@github.com:eimon-github-testing/contoso-testing.git contoso-testing
        cd contoso-testing
        git remote rm -v
   
   5.Create AWS Role
       5.1 touch main.tf versions.tf outputs.tf variables.tf
       5.2 
    
