class inline_templates {
  
  $path = '/tmp/templates' 
  
  file {"${path}": 
    ensure => directory,
  }
  
  file {"${path}/math.txt":
    ensure  => present,
    content => inline_template("What is 2 times 6? It is <%= 2 * 6 %>.\n"),
  }
  
  file {"${path}/ipaddr":
    ensure  => present,
    content => inline_template("My IP address is <%= @ipaddress %>.\n"),
  }
  
  file {"${path}/time":
    ensure  => present,
    content => inline_template("The time right now is <%= Time.now %>."),
  }

  file {"${path}/evaluation":
    ensure  => present,
    content => inline_template("Does this file exist? <%= FileTest.exists?('/tmp/test') ? 'true' : 'false' %>"),
  }  

}  
