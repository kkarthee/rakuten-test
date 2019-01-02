# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::app_logrotate
class webapp::app_logrotate {
  package { 'logrotate':
    ensure =>  present,
    #    require =>  Class[ 'webapp::nginxapp' ],
  }

  file { '/var/log/nginx':
    ensure  => directory,
    owner   => 'appuser',
    group   => 'www-data',
    mode    => 755, 
    require =>  Package['logrotate'],
  }
  #  file { '/webapps/devops/log/':
  # ensure =>  directory,
  # owner    => 'appuser',
   #group    =>  'www-data',
   #mode     => 755,
   #}

 file { 'nginx_logrotate':
   path    => '/etc/logrotate.d/nginx',
   ensure  => file,
   owner   => root,
   group   => root,
   mode   => 644,
   source  =>  'puppet:///modules/webapp/nginx'
}
 file { 'uwsgi_logrotate':
   path    => '/etc/logrotate.d/uwsgi',
   ensure  => file,
   owner   => root,
   group   => root,
   mode   => 644,
   source  =>  'puppet:///modules/webapp/uwsgi'
}

}
