# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::app_logrotate
class webapp::app_logrotate {
  package { 'logrotate':
    ensure =>  present,
  }

  file { '/var/log/nginx':
    ensure  => directory,
    owner   => 'appuser',
    group   => 'www-data',
    mode    => '0755',
    require =>  Package['logrotate'],
  }
  #  file { '/webapps/devops/log/':
  # ensure =>  directory,
  # owner    => 'appuser',
  #group    =>  'www-data',
  #mode     => 755,
  #}

file { 'nginx_logrotate':
    ensure => 'file',
    path   => '/etc/logrotate.d/nginx',
    owner  => root,
    group  => root,
    mode   => '0644',
    source =>  'puppet:///modules/webapp/nginx'
}
file { 'uwsgi_logrotate':
    ensure => file,
    path   => '/etc/logrotate.d/uwsgi',
    owner  => root,
    group  => root,
    mode   => '0644',
    source => 'puppet:///modules/webapp/uwsgi'
}

}
