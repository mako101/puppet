class haproxy {
  
  package {'haproxy': ensure => installed}
  
  file {'/etc/haproxy/default':
    content => "ENABLED =1\n",
    require => Package['haproxy'],
  }
  
  service {'haproxy':
    require => Package['haproxy']
 }
  
  file {'/etc/haproxy/haproxy.cfg':
    source  => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
    require => Package['haproxy'],
    notify  => Service['haproxy'],
  }
  
  
  
  
  
  
  
}