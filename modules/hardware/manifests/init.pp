class hardware {
  
  if $::memorysize_mb >= 4000 {
    notify { 'This machine has a lot of RAM': }
  }
    elsif $::memorysize_mb >= 2000 {
    notify { 'This machine has moderate amount of RAM': }    
  }
    else { notify { 'This machine has little RAM': }
  }
  
}