class random {
  
  file { ['/tmp/dir1',
          '/tmp/dir2',
          '/tmp/dir3']:
    ensure => directory,
  }
  
  if 'eggs' in 'do you know the price of eggs' {
    notify { 'sting found': }
  }
  else { 
    notify { 'string not found': }
  }
  notify { "Math - the answer is $math, should equal 10": } 
    
  $bit = 3 << 3  
  notify { "Bitwise shift - the answer is $bit, should be 24": }
  
}
