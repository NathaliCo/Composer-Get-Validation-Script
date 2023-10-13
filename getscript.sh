#!/bin/bash

#### Setting necessary values ####
github_url="https://github.com/mgtcardenas/Composer-Networking-Troubleshooting-Script.git"
path="/var/tmp"
repo_path="$path/Composer-Networking-Troubleshooting-Script"
branch_name="main"
validation_script="composerNetValidation.sh"

#### Validating if there is a previous version of the script ####
# If it is a previous version, update it
# If not, clone the repository
if [ -d "$repo_path" ]
then 
    echo "Updating script"
    if [ "$(ls -A $repo_path)" ]; then
        echo "$repo_path is not Empty"
        git -C $repo_path checkout main
        git -C $repo_path branch --list
        git -C $repo_path pull origin main
    else
    echo "$repo_path is Empty"
    fi
else   
    echo "Getting validation script"
    git clone --depth 1 -b $branch_name $github_url $repo_path
fi   
  
#### Runing the validation script ####
cd $(echo $repo_path)
echo "Runing validation script"
##validationscript=$(find . -maxdepth 1 -name "*.sh")
chmod u+x $validation_script
./$validation_script

