#class mysql::server {
#  $password = "secret"
#  $version  = ['mysql', 'mysql-server'] 
#  
#  package { $version: ensure => installed }
#
#  service {'mysqld':
#    ensure  => running,
#    enable  => true,
#    require => Package[$version],
#  }
#  
#  file {'/etc/my.cnf':
#    source  => 'puppet:///modules/mysql/my.cnf',
#    owner   => 'mysql',
#    group   => 'mysql',
#    notify  => Service['mysqld'],
#    require => Package[$version],
#  }
#  
#  exec {'set MySQL password':
#    command => "/usr/bin/mysqladmin -uroot password ${password}",
#    unless  => "/usr/bin/mysqladmin -uroot p${password} status",
#    require => Service['mysqld'],
#  }
#}


class mysql::server {
  
  package { 'mysql-server': ensure => installed }
  package { 'mysql': ensure => installed }

  service { 'mysqld':
    enable  => true,
    ensure  => running,
    require => Package['mysql-server'],
  }

  file { '/var/lib/mysql/my.cnf':
    owner   => 'mysql',
    group   => 'mysql',
    source  => 'puppet:///modules/mysql/my.cnf',
    notify  => Service['mysqld'],
    require => Package['mysql-server'],
  }

  file { '/etc/my.cnf':
    require => File['/var/lib/mysql/my.cnf'],
    ensure  => symlink,
    target  => '/var/lib/mysql/my.cnf',
  }

  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -psecret status',
    path    => ['/bin', '/usr/bin'],
    command => 'mysqladmin -uroot password secret',
    require => Service['mysqld'],
#    noop    => true,
  }
}
