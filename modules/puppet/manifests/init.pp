class 'puppet' {
  
  package { [ 'git' , 'puppet' ]: 
    ensure => present,
  }

  file { '/usr/local/bin/papply':
    ensure => present,
    owner  => 'git',
    greoup => 'git',
    mode   =>  '0755',
    source =>  'puppet:///modules/puppet/papply'

  user { 'git':
    ensure => present,
    home   => '/home/git',
    managehome => true,
    password => '$6$dGO89awE$1jhkDDMTIO2RSxEQrlq3eCVP8aF86LVRjFYVdNcsD2/vqplUj8RTPTTR8HukfKyNS9prc7wOaVR6P3N2yY4Jz/',
  }
  
  ssh_authorized_key { 'git_ssh':
    user    => 'git',
    type    => 'rsa',
    key     =>  'AAAAB3NzaC1yc2EAAAABIwAAAQEAsdNfFRoPxC5HJWgxc6rsJlPhDb1pDXymhI5ih5KFP8bfFDVfix2/PvRU9MjY5IetEZxIaXrzZ8395eo/pvjY6qXOLpmL9p9QmLaqWiio9Li7EeWS3jjGcTg5iAf7KgcEROEb9Zb6eNOCmtvyoKJAztn3fb4cNTirL/9LtUEWHQvadATZtfFa76eDaK78BJ0yZZDYUa7SH219ZunMMalkLZJneNIay4+s73X/EDnzoG1WPre4ah2vTNDzhfoYWp8qWcw5WncydyyvA3JwljZWjYrJUjcnXhOxAqtjKBFccT7W67Uym6zDzQP3HQm1KPZg/9LxzZQzOxxljHkmtMTTRQ==',
  }
  
