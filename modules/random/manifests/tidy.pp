class random::tidy {
  tidy {'/var/lib/puppet/reports':
    age     => "15d",
    size    => "100k",
    recurse => true,
  }
  
  
  file {'/etc/passwd':
    audit => all,
  }
}