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
  
}