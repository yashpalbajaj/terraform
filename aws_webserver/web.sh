#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo cd /var/www/html/
sudo wget https://www.free-css.com/assets/files/free-css-templates/download/page275/roxy.zip
sudo unzip roxy.zip
sudo cp -rvf roxy/* .
sudo rm -rf roxy roxy.zip
sudo systemctl restart apache2
sudo systemctl enable apache2
