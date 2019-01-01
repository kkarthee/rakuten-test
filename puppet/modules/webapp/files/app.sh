#!/bin/sh
cd /webapps/devops
sudo virtualenv env
sudo source env/bin/activate
sudo pip install -r /webapps/devops/requirements.txt
sudo pip install uwsgi 

