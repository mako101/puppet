# NginX Web Server #

class nginx {
  
  package { 'httpd':
    ensure  => absent,
  }

  package { 'nginx':
    ensure  => "1.0.15-5.el6",
    require => Package['httpd'],
  }
 
  service { 'nginx':
    ensure  => running,
    require => Package['nginx'],
    enable  => true,
  }

  file {'/etc/nginx/conf.d/catpics.conf':
    source => 'puppet:///modules/nginx/catpics.conf',
    notify => Service['nginx'],
  }

  file {'/var/www/catpics/index.html':
    ensure => present,
    content => ' 					I wuv catz!!! :3				',
  }

}
