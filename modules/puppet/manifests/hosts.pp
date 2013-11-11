class puppet::hosts {
  
  Host {
    ensure => present,
    target => '/etc/hosts',
  }
  
  host {'ipa.example.net':
    ip => '192.168.122.10',
  }
  
  host {'beta.example.net':
    ip => '192.168.122.20',
  }

  host {'gamma.example.net':
    ip => '192.168.122.30',
  }
}