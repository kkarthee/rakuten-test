# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::app_logrotate
class webapp::app_logrotate {
class { '::logrotate':
  ensure => 'latest',
  config => {
    dateext      => true,
    compress     => true,
    rotate       => 10,
    #rotate_every => 'week',
    maxsize         => 10000,
    ifempty      => true,
  }
}
 logrotate::rule { 'nginx':
  path          => '/var/log/nginx/*.log',
  rotate        => 5,
  #mail          => 'test@example.com',
  size          => '100k',
  sharedscripts => true,
  postrotate    => 'restart nginx',
}
 logrotate::rule { 'myproject':
  path          => '/webapp/devapps/log/*.log',
  rotate        => 5,
  #mail          => 'test@example.com',
  size          => '100k',
  sharedscripts => true,
  postrotate    => 'restart myprojet',
}
}
