
node 'ipa.example.net' {

  include nginx

  file { '/tmp/hello':
    content => "# This file is managed by Puppet\n
 	Hello, world\n",
    owner   =>  "viktor",
    group   =>  "nobody",
  }

  file { '/etc/motd':
    content => "Puppeting away since 2013!!",
  }

  package { 'pygame':
    ensure  => absent,
  }
   
}

node 'beta.example.net' {

  include nginx


  # Disabled ssh key
  ssh_authorized_key { 'john_ssh':
    user    => 'john',
    type    => 'rsa',
    key     => '',
  }  

  #Disabled user
  user { 'john':
    ensure  => present,
    comment => 'John Simmons',
    home    => '/home/john',
    managehome => true,
    password => '*',
  }

}

node 'gamma.example.net' {
  include sshd, puppet, sudoers


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


