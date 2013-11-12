class dynamic::replace {
  define append_if_not_there ($file,$line){
    exec { "echo \"${line}\" >> ${file}":
      unless => "grep -Fx \"${line}\" ${file}",
    }
  }
  
  define remove_if_there ($file,$line){
    exec { "sed -i \'s/${line}//\' ${file}":
      onlyif => "grep -Fx \"${line}\" ${file}",
    }
  }
  
  # define add_git_aliases($line = 'alias root=\'sudo su -\' \n alias gs=\'git status\' \n alias gm=\'git commit -am\' \n alias gpp=\'git pull && git push\' \n', $file = '/home/git/.bashrc') {
    define add_git_aliases ($line = 'alias root=\'sudo su -\'', $file = '/home/git/.bashrc') {
    exec { "echo \"${line}\" >> ${file}":
      unless => "grep -Fx ${line} ${file}",
    }
  }
}