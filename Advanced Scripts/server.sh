#!/bin/bash

echo "starting the task of server provisioning with Apache on an ubuntu 22.04."
sudo apt update && sudo apt upgrade -y
sudo apt install Apache2

#!/bin/bash  

# Update the package index  
sudo apt update  

# Install Apache2  
sudo apt install -y apache2  

# Adjust the firewall to allow HTTP and HTTPS traffic  
sudo ufw allow 'Apache'  

# Enable Apache to start on boot  
sudo systemctl enable apache2  

# Start the Apache service  
sudo systemctl start apache2  

# Confirm Apache is running  
sudo systemctl status apache2

echo "end of provisioning"


