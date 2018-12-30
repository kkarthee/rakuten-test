#!/bin/sh
cd /webapps/devops
sudo virtualenv env
sudo source env/bin/activate
sudo start myproject
sudo service nginx restart
