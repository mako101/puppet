class mysql::server {
  $password = 'secret'
  $version  = 'mysql-server'
  
  package { $version: ensure => installed }

  service {'mysqld':
    ensure  => running,
    enable  => true,
    require => Package[$version],
  }
  
  file {'/etc/my.cnf':
    source  => 'puppet:///modules/mysql/my.cnf',
    owner   => 'mysql',
    group   => 'mysql',
    notify  => Service['mysqld'],
    require => Package[$version],
  }
  
  exec {'set MySQL password':
    command => "/usr/bin/mysqladmin -uroot password ${password}",
    unless  => "/usr/bin/mysqladmin -uroot p${password} status",
    require => Service['mysqld'],
  }
}