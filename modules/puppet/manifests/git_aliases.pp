class puppet::git_aliases {
  define alias ($line = $name, $user = 'git') {
    exec { "echo \"${line}\" >> /home/${user}/.bashrc":
      unless => "grep -Fx ${line} /home/${user}/.bashrc",
    }
  }
  
  alias { 'alias root=\'sudo su -\'':}
  
  
  
  
  
  
  
  
  
  
  
  
    
}

