class random::recurse {
  
  file {'/tmp/foo':
    ensure  => directory,
    source  => 'puppet:///modules/random/tmp/foo',
    recurse => true,
    purge   => true,
    force   => true,
    noop    => false,
  }
  
  file {'/tmp/foo/boo':
    ensure => directory,
  }
}