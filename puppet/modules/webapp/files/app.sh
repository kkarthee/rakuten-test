#!/bin/sh
cd /webapps/devops
virtualenv env
source env/bin/activate
./app.py &
