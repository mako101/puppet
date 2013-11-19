
node 'base' {
  include nginx, random, stages, puppet 
}

node 'ipa.example.net' inherits 'base'{

  include dynamic, dynamic::include, dynamic::replace
#  include dynamic::augeas
#  include dynamic::replace
#  include dynamic::templates
#  include dynamic::app_version
#  include random::tidy
  include virtual::test1, virtual::test2
  include random::schedule, random::recurse 
  
  
#  class { 'puppet::secret':
#    puppetdir => '/home/viktor',
#  }
  
  
#  include heritage::one
   include heritage::two

#  file { '/var/www/catpics/img':
#    source   => 'puppet:///modules/catpics/imgs',
#    recurse  => true,
#    require  => File['/var/www/catpics/'],
#  }

  nginx::website { 'catpics':
    site_domain => 'catpics.example.net',
    index_text  => '		I luv catz!!!			',
    hour        => '03',
  }
  
  file { '/etc/motd':
    content => "Puppeting away since 2013!!",
  }
 
  cron { 'Cron job to run as user':
    command => 'ls /home/viktor > /home/viktor/inventory',
    hour    => '*/1',
    minute  => '14',
    user    => 'viktor',
  }
 
#  dynamic::replace::append_if_not_there {'Add a line to a text file':
#    file => '/home/viktor/inventory',
#    line => 'An extra line :)',
#  }
  
  dynamic::replace::remove_if_there {'Remove a line from a text file':
    file => '/home/viktor/inventory',
    line => 'foobareefdfjidjasi;d',
  } 
  
  $mysql_password = "secret"
  
  mysql::db {'testdb':
    user => "funky",
    password => "pizazz",
  }
    
}


node /beta.*/ inherits 'base' {

  include sudoers, ntp, puppet::repo
  include dynamic::include
  include mysql::server
 
  nginx::website { 'dogpics':
    site_domain => 'dogpics.example.net',
    index_text  => '		Dogs?? Not sure if gusta..		',
  }

#  mysqldb { 'testdb':
#    user => "funky",
#    password => "pizazz",
#  }

 
  # Disabled ssh key
#  ssh_authorized_key { 'john_ssh':
#    user    => 'john',
#    type    => 'rsa',
#    key     => '',
#  }  

  #Disabled user
  user { 'john':
    ensure  => present,
    comment => 'John Simmons',
    home    => '/home/john',
    managehome => true,
    password => '*',
  }

 cron {'Pull and apply puppet updates':
   command => '/usr/local/bin/pull-updates',
   hour    => '*',
   minute  => '*/10',
   user    => 'git',
  }
}

node 'gamma.example.net' {
  include sshd, puppet, sudoers, commands
  include inline_templates
  include ntp

  user { 'art':
    ensure  => present,
    comment => 'Art Vanderlay',
    home    => '/home/art',
    managehome => true,
  }


  ssh_authorized_key { 'art_ssh':
    user    => 'art',
    type    => 'rsa',
    key     =>  'AAAAB3NzaC1yc2EAAAABIwAAAQEAsdNfFRoPxC5HJWgxc6rsJlPhDb1pDXymhI5ih5KFP8bfFDVfix2/PvRU9MjY5IetEZxIaXrzZ8395eo/pvjY6qXOLpmL9p9QmLaqWiio9Li7EeWS3jjGcTg5iAf7KgcEROEb9Zb6eNOCmtvyoKJAztn3fb4cNTirL/9LtUEWHQvadATZtfFa76eDaK78BJ0yZZDYUa7SH219ZunMMalkLZJneNIay4+s73X/EDnzoG1WPre4ah2vTNDzhfoYWp8qWcw5WncydyyvA3JwljZWjYrJUjcnXhOxAqtjKBFccT7W67Uym6zDzQP3HQm1KPZg/9LxzZQzOxxljHkmtMTTRQ==',
  }

}

node 'theta', 'zeta' inherits 'base' {}
