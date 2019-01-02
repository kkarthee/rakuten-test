# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::package
class webapp::package(
  #$packages-pip = [ 'Flask' , 'Werkzeug' , 'python-virtualenv' ]
 # $packages-apt = []
)
{
  exec { 'apt-get-update':
  command => 'apt-get --yes update',
  path => ['/usr/bin', '/usr/sbin' , '/usr/local/bin' , '/usr/local/sbin' ,'/bin' , '/sbin'],
  } 
  package { [ 'build-essential' , 'python-dev' , 'python-pip' ] :
    ensure => 'present',
    require => Exec['apt-get-update'],
  }
  package { [ 'virtualenv' , 'uwsgi'] :
  ensure => present,
  provider => pip,
  require => Package [ ]
  }

 /* file { '/usr/bin/pip':
    ensure => link ,
    target =>  '/usr/bin/pip3',
    require => Package['python3-pip'],
  }*/
}
