class facts {
  
  file {['/etc/facter', '/etc/facter/facts.d']:
    ensure => directory,
  }
  
  file {'/etc/facter/facts.d/user.sh':
    source => 'puppet:///modules/facts/etc/facter/facts.d/user.sh',
    mode   => '0755',
  }
  
  file {'/etc/facter/facts.d/cpu_flags.sh':
    source => 'puppet:///modules/facts/etc/facter/facts.d/cpu_flags.sh',
    mode   => '0755',
  }
}
