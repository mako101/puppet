class ntp {
  
  package {'ntp':
    ensure  => latest,
  }
  
  file {'/etc/ntp.conf':
    ensure  => present,
    source  => 'puppet:///modules/ntp/ntp.conf',
    notify  => Service['ntpd'],
  }

  service {'ntpd':
    ensure  => running,
    enable  => true,
    require => [ File['/etc/ntp.conf'], Package['ntp'] ],
  }

}
