class nfs {
  package {['nfs-utils', 'nfs-utils-lib']:
    ensure => installed,
  }
  
  service {'nfs':
    require => Package[['nfs-utils', 'nfs-utils-lib']]
  }
  
  file {'/etc/exports.d':
    ensure => directory,
  }
  
  exec {'update-etc-exports':
    command     => '/bin/cat /etc/exports.d/* > /etc/exports',
    notify      => Service['nfs'],
    refreshonly => true,
  }
  
}