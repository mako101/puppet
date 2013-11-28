class heartbeat {
  package {'heartbeat':}
  
  service {'heartbeat':
    require => Package['heartbeat'],
  } 
  
  exec {'reload_heartbeat':
    command     => '/sbin/service heartbeat reload',
    refreshonly => true,
  }
  
  file {'/etc/ha.d/authkeys':
    content => "auth 1\n
                sha1 supersecret\n",
    mode    => '0600',
    require => Package['heartbeat'],
    notify  => Exec['reload_heartbeat'],
  }
  
}