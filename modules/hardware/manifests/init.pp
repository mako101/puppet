class hardware {
 
# Testing the if statements 
  
  if $::memorysize_mb >= 8000 {
    notify { 'This machine has a lot of RAM': }
  }
    elsif $::memorysize_mb >= 4000 {
    notify { 'This machine has moderate amount of RAM': }    
  }
    else { 
    notify { 'This machine has little RAM': }
  }

  if $::processorcount <= 1 {
    notify { 'This is a single-core machine': }
  } 
    else { 
    notify { 'This is a multi-core machine': } 
  }
  
  unless $::kernel == 'Windows' {
    notify { 'This machine runs a Linux kernel': }  
  }
  
# Testing the case statements  
  
  case $::operatingsystem {
    'CentOS', 'RedHat': {
      notify { 'This is a Red Hat derivative': }
    }
    'Debian', 'Ubuntu': {
      notify { 'This is a Debian derivative': }
    }
    default: { fail('Puppet cannot recognise the installed OS') 
    }
  }
    
  
  
  
}