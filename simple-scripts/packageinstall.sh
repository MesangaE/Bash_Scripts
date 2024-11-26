#!/bin/bash

# define a function install_packages that checks available package managers (apt-get or yum) and installs specified packages
#command -v to check if a command is available
# the -y flag is used to automatically answer yes to prompts during package installation.
#
install_packages() {
    local package_manager=""

    # check which package manager is available
    if [ -x "$(command -v apt-get)" ]; then
       package_manager= "apt-get"
    elif [ -x "$(command -v yum)" ]; then
       package_manager="yum"
    else 
       echo "Error: no supported package manager found. "
       exit 1
    fi
    echo "update packages lists..."
    sudo $package_manager update -y
    echo "Installing packages..."
    sudo $package_manager install -y package1 package2 package3
}
# call the function to install packages
install_packages