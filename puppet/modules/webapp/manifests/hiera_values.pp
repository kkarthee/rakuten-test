# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::hiera_values
class webapp::hiera_values {
  file { '/etc/puppet/hiera.yaml':
      ensure => present,
      source => 'puppet:///modules/webapp/hiera.yaml',
    }
  file {'/webapps/devops/hieradata':
  ensure => directory,
  owner => 'appuser',
  group => 'www-data',
  }
  file { '/webapps/devops/hieradata/common.yaml':
  ensure  => present,
  source => 'puppet:///modules/webapp/common.yaml',
    owner => 'appuser',
    group => 'www-data',
    mode  => 0744,
    }
}
