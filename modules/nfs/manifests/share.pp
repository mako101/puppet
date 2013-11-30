# Export a specific file share via NFS 

define nfs::share ($path, $allowed, $options = '') {
  
  file {$path:
    ensure => directory,
  }

  file {"/etc/exports.d/${name}":
    content => "${path} ${allowed} (${options})\n",
    notify  => Exec['update-etc-exports'],
  }
  
}