class puppet::hosts {
  
  Host {
    ensure => present,
    target => '/etc/hosts',
  }
  
  host {'ipa.example.net':
    ip           => '192.168.122.10',
    host_aliases => 'ipa',
    }
  
  host {'beta.example.net':
    ip           => '192.168.122.20',
    host_aliases => 'beta', 
  }

  host {'gamma.example.net':
    ip           => '192.168.122.30',
    host_aliases => 'gamma',
  }
}