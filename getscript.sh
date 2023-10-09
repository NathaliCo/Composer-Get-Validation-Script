#!/bin/bash

#### Setting necessary values ####
github_url="https://github.com/mgtcardenas/Composer-Networking-Troubleshooting-Script.git"
repo_name="Composer-Networking-Troubleshooting-Script"
branch_name="main"
validation_script="composerNetValidation.sh"

#### Validating if there is a previous version of the script ####
# If it is a previous version, update it
# If not, clone the repository
if [ -d "$repoName" ]
then 
    echo "Updating script"
    if [ "$(ls -A $repo_name)" ]; then
        echo "$repo_name is not Empty"
        cd $(echo $repo_name)
        git checkout $branch_name
        git branch --list
        git pull
    else
    echo "$repo_name is Empty"
    fi
else   
    echo "Getting validation script"
    git clone --depth 1 -b $branch_name $github_url
    cd $(echo $repo_name)
fi   
  
#### Runing the validation script ####
echo "Runing validation script"
##validationscript=$(find . -maxdepth 1 -name "*.sh")
chmod u+x $validation_script
sudo ./$validation_script

