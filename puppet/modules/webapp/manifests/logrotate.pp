class { '::logrotate':
  ensure => 'latest',
  config => {
    dateext      => true,
    compress     => true,
    rotate       => 10,
    rotate_every => 'week',
    size         => 10k,
    ifempty      => true,
  }
}
