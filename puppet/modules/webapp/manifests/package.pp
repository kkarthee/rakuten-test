# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::package
class webapp::package(
  #$packages-pip = [ 'Flask' , 'Werkzeug' , 'python-virtualenv' ],
  $packages_apt = [ 'build-essential', 'python-dev' , 'python-pip' , 'python-flask' ],
  #$packages_apt = $apt_packages,
  #$packages_pip = [ 'virtualenv' , 'uwsgi' , 'uwsgitop' ],
  $packages_pip = [ 'virtualenv' , 'uwsgi'],
)
{
  exec { 'apt_get_update':
  command => 'apt-get --yes update',
  path    => ['/usr/bin', '/usr/sbin' , '/usr/local/bin' , '/usr/local/sbin' ,'/bin' , '/sbin'],
  }
  package {  $packages_apt:
  #  name => $packages-apt:
    ensure   => 'present',
    provider => 'apt',
    require  => Exec['apt_get_update'],
  }
  #package { [ 'virtualenv' , 'uwsgi'] :
  package { $packages_pip:
  ensure   => present,
  provider => pip,
  require  => Package[ $packages_apt ],
  }

/* file { '/usr/bin/pip':
    ensure => link ,
    target =>  '/usr/bin/pip3',
    require => Package['python3-pip'],
  }*/
}
