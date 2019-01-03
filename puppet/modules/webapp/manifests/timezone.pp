# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include webapp::timezone
class webapp::timezone  (
# $region   = $uwsgi_region,
# $locality = $uwsgi_locality,
#  $hwutc    = $uwsgi_hwutc,
$region = Etc,
$locality = UTC,
$hwutc = 'true',
)
{
  file { '/etc/localtime':
    source  => "file:///usr/share/zoneinfo/${region}/${locality}",
    links   => follow,
    replace => true,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
  package { 'tzdata':
            ensure => present,
            before => File['/etc/localtime'],
  }
    file { '/etc/timezone':
            owner   => 'root',
            group   => 'root',
            mode    => '0644',
            content => template('webapp/ubuntu.erb'),
        }

}
