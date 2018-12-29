# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::pyservice
class webapp::pyservice {

user { 'testuser':
  ensure           => 'present',
  home             => '/webapp/devops/',
  password         => '$6$YBCfxqTD$O2f7SaF7tf8HG.gLaT0Ju2.rNGH9DzuU/2smhVTRRSJ1QhVbYFKIkJLwXwwElH3JtJPAcnw8kaAdf8dCV3Dg3.',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
}
file { '/webapps/devops/app.sh':
#ensure => 'present' ,
#path => '/webapp/devops/',
#content => '$content',
source => 'puppet:///modules/webapp/app.sh',
#owner  => 'testuser',
mode   => '0755',
}
exec { '/webapps/devops/app.sh':
#command => 'cd /webapps/devops; virtualenv env; source env/bin/activate; ./app.py &',
 path => ['/usr/bin', '/usr/sbin' , '/usr/local/bin' , '/usr/local/sbin' , '/bin' , '/sbin'],
     }
}

 
