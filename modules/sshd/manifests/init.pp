class sshd {

  package { 'openssh-server':
    ensure => latest,
  } 

  service { 'sshd':
    require => Package['openssh-server'],
    ensure  => running,
    restart => '/sbin/service sshd reload'
  }
}
