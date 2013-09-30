class random::exec {
  
  exec {'Fail test':
    command   => 'ls /false',
#    returns   => 2,
#    logoutput => false,
  }
   
  exec {'Success test':
    command   =>'ls -lh /',
    logoutput => true,
  }
  
}