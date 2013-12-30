
node 'base' {
  include nginx, random, stages, puppet, facts
  
  }

node 'ipa.example.net' inherits 'base'{

  include dynamic, dynamic::include, dynamic::replace
#  include dynamic::augeas
#  include dynamic::replace
#  include dynamic::templates
#  include dynamic::app_version
#  include random::tidy
  include virtual::test1, virtual::test2
  include random::schedule 
#  include random::recurse 
  include haproxy
  
  notify { "${::current_users} users are currently logged in": }
  
  
  case $::cpu_type {
    'AMD'   : { notify {"Installing AMD-specific packages":} } 
    'Intel' : { notify {"Installing Intel-specific packages":} }
    default : { notify {"I don't know this processor!":} }
  }
  
#  $cpuflags = $::cpu_flags
#  
#  if $cpuflags > 50 { notify { "This processor has lots of flags !!":} }
  
  notify { "${::real_users} have used this machine": }
   
  notify { "Today is $::day_of_week ": }
   
  $word = hiera('word')
   
  notify { "the word from hiera is ${word}": }
  
  $greeting = hiera('greeting')
  
  notify { "My greeting is ${greeting}": } 
  
  $box_type = hiera('kernel_type')
  
  notify { "This is a ${box_type} box": }
  
  $gpg = hiera('top_secret')

  notify {"The encoded word is ${gpg}": }
   
  if 'viktor' in $::real_users {
    notify {'Viktor waz ere!!': }
  }
  else { notify { "${::real_users} have used this machine": } }
    
  ruby::version {'2.0.0-p247':}
  
  
  
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
  
  class { 'heartbeat::vip':
    ip1   => '192.168.122.20',
    ip2   => '192.168.122.30',
    node1 => 'beta.example.net',
    node2 => 'gamma.example.net',
    vip   => '192.168.122.50/24',
  }
  
  nfs::share {'data':
    path    => '/data',
    allowed => '192.168.122.0/24',
    options => 'rw,sync,no_root_squash',
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
  
  class { 'heartbeat::vip':
    ip1   => '192.168.122.20',
    ip2   => '192.168.122.30',
    node1 => 'beta.example.net',
    node2 => 'gamma.example.net',
    vip   => '192.168.122.50/24',
  }
  
  nfs::share {'foo':
    path    => '/fooo',
    allowed => '192.168.122.0/24',
    options => 'rw,sync,no_root_squash',
  }
  
}

node 'theta', 'zeta' inherits 'base' {}
