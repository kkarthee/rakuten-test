# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::contain_classes
class webapp::contain_classes {
contain webapp::timezone
contain webapp::package
contain webapp::pyservice
contain webapp::nginxapp
contain webapp::myproject
contain webapp::app_logrotate

Class['webapp::timezone']
-> Class['webapp::package']
-> Class['webapp::pyservice']
-> Class['webapp::nginxapp']
-> Class['webapp::myproject']
-> Class['webapp::app_logrotate']
}
