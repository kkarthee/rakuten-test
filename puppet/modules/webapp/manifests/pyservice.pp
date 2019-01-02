# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::pyservice
class webapp::pyservice {
file { '/webapps/devops/':
  ensure    => directory, 
  owner     => 'appuser',
  group     => 'www-data',
  #mode      => 755,
 recurse =>  true,
  require   => User['appuser'],
}
user { 'appuser':
  ensure           => 'present',
  home             => '/webapps/devops/',
  uid              => 555,
  password         => '$6$YBCfxqTD$O2f7SaF7tf8HG.gLaT0Ju2.rNGH9DzuU/2smhVTRRSJ1QhVbYFKIkJLwXwwElH3JtJPAcnw8kaAdf8dCV3Dg3.',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  gid              => 'www-data',
  groups           => 'sudo',
  before           =>  File[ '/webapps/devops/' ], 
}
file { '/webapps/devops/log':
  ensure    => directory,
  owner     => 'appuser',
  group     => 'www-data',
  #mode      => 755,
 recurse =>  true,
}
file { '/etc/sudoers.d/55-myproject-users':
ensure   => file,
mode     => 440,
owner    => 'root',
group    => 'root',
content  => 'appuser ALL=(ALL) NOPASSWD:ALL',
} 
file { '/webapps/devops/app.sh':
ensure   => 'present' ,
source   => 'puppet:///modules/webapp/app.sh',
owner    => 'appuser',
group    =>  'www-data',
mode     => '0755',
} 
file { '/webapps/devops/run_app.sh':
ensure   => 'present' ,
source   => 'puppet:///modules/webapp/run_app.sh',
owner    => 'appuser',
group    =>  'www-data',
mode     => '0755',
}
file { '/webapps/devops/wsgi.py':
ensure   => 'present' ,
source   => 'puppet:///modules/webapp/wsgi.py',
owner    => 'appuser',
group    =>  'www-data',
mode     => '0755',
}
file { '/webapps/devops/myproject.ini':
    ensure => present,
    source => 'puppet:///modules/webapp/myproject.ini',
    mode  => 0644,
    owner  => 'appuser',
    group  =>  'www-data',
}
file { '/etc/init/myproject.conf':
  ensure =>  present,
  source => 'puppet:///modules/webapp/myproject.conf',
  mode  => 0644,
  owner  => 'root',
  group  =>  'root',
}
}

 
