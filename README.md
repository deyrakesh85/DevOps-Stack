# DevOps-Stack
This Project is a single click solution to create a Live DevOps Platform!! 

This application enables you to create a DevOps Platform quickly for your organisation/learning without all the hassles of installation and configuration of different core DevOps tools.

The application consists of four core basic DevOps tools required for any deployment work:

    1. Jenkins (Continuous Integration & Deployment)
    2. GitLab (Git Server for Source code repository)
    3. Nexus (Software Repository Manager)
    4. Sonarqube (Static Code Analysis)

Each services in the application is designed to run on docker containers.

*Note: The current version of the application is designed to run on Ubuntu 16.04 if you are using a Linux Server.*




## Running the Application ##

This application is designed to give you the fexibility to it in different ways as per your requirement.

### Windows: ###

    1. Please ensure your system have latest version of vagrant installed and vagrant installation path is set in PATH variable.
    2. Download the latest version of the project from the Releases section and unzip it.
    3. Open a command prompt and switch to the project directory.
    4. Run the command "vagrant up"
    5. Wait for the command to complete. It might take sometime depending on the internet speed.
    6. After a while, you should get a nice dashboard if you access http://192.168.21.11
    
   *Note: You can have a quick look at the vagrantfile and change the server ip if you would like to.*
   
### Ubuntu Server ###

  #### Docker installed system ####
  
  
  
  #### Bare Ubuntu VM ####
   ###### Configure locally ######
     
     
   ###### Configure in a Remote VM ###### 
