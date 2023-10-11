#!/usr/bin/env bash
# Script sets up web servers for deploying web static content

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install -y nginx
sudo mkdir -p /data/web_static/releases/test
sudo mkdir -p /data/web_static/shared/

echo "Holberton School" | sudo tee /data/web_static/releases/test/index.html
if [ -L /data/web_static/current ]; then
    sudo rm -f /data/web_static/current
fi
sudo ln -sf /data/web_static/releases/test /data/web_static/current

sudo chown -R ubuntu:ubuntu /data
sudo sed -i '39 i\ \tlocation /hbnb_static {\n\t\talias /data/web_static/current;\n\t}\n' /etc/nginx/sites-available/default

sudo service nginx restart
