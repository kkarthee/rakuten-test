# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::myproject
class webapp::myproject {
exec { 'Install pkgs on Virtual env': 
command => '/webapps/devops/app.sh',
unless  => [ 'pip list |grep Flask' , 'pip list |grep uWSGI' , 'pip list | grep Werkzeug' ],
path    => [ '/webapps/devops/env/bin', '/usr/bin', '/usr/sbin' , '/usr/local/bin' , '/usr/local/sbin' , '/bin' , '/sbin' ],
require => Class[ 'webapp::pyservice' ],
} 
exec { 'Run Application':
command => '/webapps/devops/run_app.sh',
path    => ['/webapps/devops/env/bin','/usr/bin', '/usr/sbin' , '/usr/local/bin' , '/usr/local/sbin' , '/bin' , '/sbin'],
require => Exec[ 'Install pkgs on Virtual env' ],
}
}
