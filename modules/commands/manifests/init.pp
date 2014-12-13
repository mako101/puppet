
class commands {

  file {'/tmp/test.conf':
    ensure  => present,
    content => 'ab',
  }

  exec { 'Config Update':
    command     => '/bin/echo I ran this command on `/bin/date` > /tmp/command.txt',
    refreshonly => true,
    subscribe   => File['/tmp/test.conf'],
  }

  exec { 'Copy Once':
    cwd     => '/tmp',
    command => '/bin/cp /etc/motd  /tmp/copy_once',
    creates => '/tmp/copy_once',
  }

# 3-step command

  exec { 'command-1':
    command => '/bin/echo Step 1',
  }

  exec { 'command-2':
    command => '/bin/echo Step 2',
    require => Exec['command-1'],
  }


  exec { 'command-3':
    command => '/bin/echo Step 3',
    require => Exec['command-2'],
  }


#  Run command with the path specified

  exec { 'test-command':
    command => 'echo "I am running this without full path :)" > /tmp/foo',
#    path    => ['/bin', '/usr/bin'],
  }

}
