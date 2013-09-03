class random {
  
  file { ['/tmp/dir1',
          '/tmp/dir2',
          '/tmp/dir3']:
    ensure => directory,
  }
  
}