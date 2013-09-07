class hardware {
  
  if $::memorysize_mb >= 8000 {
    notify { 'This machine has a lot of RAM': }
  }
    elsif $::memorysize_mb >= 4000 {
    notify { 'This machine has moderate amount of RAM': }    
  }
    else { 
    notify { 'This machine has little RAM': }
  }
  
}

  if $::processorcount <= 2 {
    notify { 'This is a single-core machine': }
  } 
    else { 
    notify { 'This is a multi-core machine': } 
  }