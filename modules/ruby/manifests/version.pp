define ruby::version($user = 'viktor') {
  
  include ruby::rbenv
  $version = $name
  
  exec {"install-ruby-${version}":
    command => "/bin/su - ${user} -c '/home/${user}/.rbenv/bin/rbenv install ${version}'",
    creates => "/home/${user}/.rbenv/versions/${version}",
    require => [ Exec['install-rbenv'], 
    File["/home/${user}/.bashrc"], 
    Package['curl'] ],
    timeout => 0,
  }
  
  file {"/home/${user}/.rbenv/version":
    content => $version,
    require => Exec['install-rbenv'],
  }
    
}