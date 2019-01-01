#!/bin/sh
cd /webapps/devops
virtualenv env
source env/bin/activate
pip install -r /webapps/devops/requirements.txt
pip install uwsgi 

