# NginX Web Server #

class nginx {
 
  include nginx::config
 
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

  cron { 'Back up $site_name':
    command => '/usr/bin/rsync -avz /var/www/$site_name/ /backup/$site_name/',
    hour    => '02',
    minute  => '00', 
  }
}
