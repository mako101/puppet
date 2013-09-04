
node 'ipa.example.net' {

  include nginx

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
    minute  => '15',
    user    => 'viktor',
  }
  
}


node 'beta.example.net' {

  include nginx

  nginx::website { 'dogpics':
    site_domain => 'dogpics.example.net',
    index_text  => '		Dogs?? Not sure if gusta..		',
  }

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
  include random

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


