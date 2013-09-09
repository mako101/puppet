class random {
  
  file { ['/tmp/dir1',
          '/tmp/dir2',
          '/tmp/dir3']:
    ensure => directory,
  }
  
  if 'Eggs' in 'do you know the price of eggs' {
    notify { 'sting found': }
  }
  else { 
    notify { 'string not found': }
  }
}