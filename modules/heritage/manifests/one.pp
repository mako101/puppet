class heritage::one {
  
  file {'/tmp/bobo':
    ensure  => present,
    content => 'poo
',
  }

  file {'/tmp/goo':
    ensure  => present,
    mode    => '0655',
    content => 'Woopty doo!!\n',
    require => File['/tmp/bobo'],
  }
}