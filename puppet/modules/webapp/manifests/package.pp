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
  package { [ 'python3-pip', 'python-virtualenv'] :
    ensure => 'present',
    require => Exec['apt-get-update'],
  }
  exec { 'linkfile':
          command => 'ln -s /usr/bin/pip3 /usr/bin/pip',
          path => ['/usr/bin', '/usr/sbin' , '/usr/local/bin' , '/usr/local/sbin' , '/bin' , '/sbin'],
          unless => ['which pip'],
          require => Package['python3-pip'],
       }
  package { ['Flask' , 'Werkzeug']:
    ensure => 'present',
    provider => pip,
    require => Exec['linkfile'],
  }
}
