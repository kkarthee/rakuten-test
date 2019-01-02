#!/bin/bash
cd /webapps/devops
 virtualenv env
 source env/bin/activate
 if [  -e '/tmp/myproject.sock' ];
  then
  restart myproject
  else
  start myproject
  fi
#sudo service nginx restart