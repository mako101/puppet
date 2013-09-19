
define nginx::website ( $site_domain, $hour = '00', $index_text = 'default' ) {
     
  $site_name = $name
  
  file {"/var/www/${site_name}/":
    ensure => directory,
  }

  file {"/var/www/${site_name}/index.html":
    require => File["/var/www/${site_name}"],
    ensure  => present,
    content => template('nginx/index.html.erb'),
  }

  file {"/etc/nginx/conf.d/${site_name}.conf":
    require => Package['nginx'],
    content  => template('nginx/vhost.conf.erb'),
    notify  => Service['nginx'],
  }

  # Sample backup job

  file {['/backup', "/backup/${site_name}"]:
    ensure => directory,
  }

  cron { "Back up ${site_name}":
    command => "/usr/bin/rsync -avz /var/www/${site_name}/ /backup/${site_name}/",
    hour    => $hour,
    minute  => '00', 
    user    => 'root',
  }
}
