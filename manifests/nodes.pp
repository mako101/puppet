
node 'ipa.example.net' {

  include nginx, sshd

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
    ensure => absent,
  }
   
}

node 'beta.example.net' {

  include nginx

}
