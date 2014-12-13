class sshd {

  package { 'openssh-server':
    ensure => latest,
  }

  service { 'sshd':
    require => Package['openssh-server'],
    ensure  => running,
    restart => '/sbin/service sshd reload',
  }


  file { '/etc/ssh/sshd_config':
    source => 'puppet:///modules/sshd/sshd_config',
    notify => Service['sshd'],
    owner  => 'root',
    group  => 'root',
  }
}
