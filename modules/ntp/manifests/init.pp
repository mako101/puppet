class ntp ($server = 'UNSET') {
  
  package {'ntp:'
    ensure  => latest,
  }
  
  file {'/etc/ntp.conf':
    content => template("${module_name}/ntp/conf.erb}"),
    notify  => Service['ntp'],
  }

  service {'ntp':
    ensure  => running,
    enable  => true,
    require => [ File['/etc/ntp.conf'], Package['ntp'] ],
  }

}