#!/bin/bash
cd /webapps/devops
 virtualenv env
 source env/bin/activate
 if [ -f '/tmp/myproject.sock' ];
  then
  echo " My Project is  already started and it is running"
  else
  start myproject
  fi
#sudo service nginx restart