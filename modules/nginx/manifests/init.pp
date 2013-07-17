# NginX Web Server #

class nginx {
  
  package { 'httpd':
    ensure  => absent,
  }

#  file { '/etc/yum.repos.d/epel.repo':
#    ensure  => present,
#    content => 'puppet:///modules/nginx/epel.repo',
#  }   

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
    require => Package['nginx'],
    source  => 'puppet:///modules/nginx/catpics.conf',
    notify  => Service['nginx'],
  }

  file {'/var/www/catpics/':
    ensure => directory,
  }

  file {'/var/www/catpics/index.html':
    require => File['/var/www/catpics/'],
    ensure  => present,
    content => ' 					I wuv catz!!! :3				',
  }

}
