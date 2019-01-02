#!/bin/bash
cd /webapps/devops
virtualenv env
source env/bin/activate
export PATH=/webapps/devops/env/bin:$PATH
#pip install python
#pip3 install uWSGI
pip install -r /webapps/devops/requirements.txt
