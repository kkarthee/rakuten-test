#!/bin/bash
cd /webapps/devops
 virtualenv env
 source env/bin/activate
 restart myproject
#sudo service nginx restart  
