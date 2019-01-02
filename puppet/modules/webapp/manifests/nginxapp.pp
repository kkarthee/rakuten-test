# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::nginxapp
class webapp::nginxapp (
  $proj = myproject,
  $app_port = 5000,
  $web_port = 80, 
)
  {
  file { '/etc/nginx/sites-available/myproject': 
    ensure => present ,
    content =>  template('webapp/myproject.erb'),
  }
  file { '/etc/nginx/sites-enabled/myproject':
     ensure => link,
     source => '/etc/nginx/sites-available/myproject',
     require => File[ '/etc/nginx/sites-available/myproject' ],
  }
  
  file { '/etc/nginx/sites-available/default':
  ensure => absent,
  }
  
  file {'/etc/nginx/sites-enabled/default':
    ensure =>  absent, 
  }

package { 'nginx':
            ensure  => present,
            before  => File['/etc/nginx/sites-available/myproject'],
                #before =>  Class[ 'webapp::pyservice' ],
}
service { 'nginx':
  ensure  => running,
  require =>  Package['nginx'],
}

}
