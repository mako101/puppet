class dynamic {
#  $list = generate('/bin/ls','/home/viktor')
#  
#  notify { "The contents of my home folder are:\n ${list}": }

  $arg1 = 'strict'
  $arg2 = 'git'
  $folder = '/home/viktor/eclipse/about.html'
#  $argstring = shellquote($arg1, $arg2, $folder)
  $command = generate('/bin/grep', '-i', $arg1, $folder)
#  notify {"${command}":}

  if '8u08u8u80' in $command {
    notify { 'Found it!!': }
  }
  else {
    notify { 'Didn\'t work :(': }
  }
    
  







  
#  exec {'blah':
#    command => "ls ${arg1} | grep ${arg2}",
#    logoutput => true,
#  }



}