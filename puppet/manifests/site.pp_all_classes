####Install package ####
include webapp::package
include webapp::pyservice
include webapp::timezone
include webapp::nginxapp
include webapp::app_logrotate
include webapp::myproject


Class [ 'webapp::timezone']
-> Class [ 'webapp::package']
-> Class [ 'webapp::nginxapp' ]
-> Class [ 'webapp::pyservice' ]
-> Class [ 'webapp::myproject' ] 
-> Class [ 'webapp::app_logrotate' ]
