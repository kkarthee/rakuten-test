#!/bin/sh
cd /webapps/devops
sudo virtualenv env
sudo source env/bin/activate
sudo pip install -f /webapps/devops/requirements.txt
sudo pip install uwsgi 

