# NginX Web Server #

class nginx::config {

#  file { '/etc/yum.repos.d/epel.repo':
#    ensure  => present,
#    content => 'puppet:///modules/nginx/epel.repo',
#  }   
  
  file { '/etc/yum.repos.d/nginx.repo':
    ensure => present,
    source => 'puppet:///modules/nginx/nginx.repo',
  }

  file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-nginx':
    ensure  => present,
    require => File['/etc/yum.repos.d/nginx.repo'],
    source  => 'puppet:///modules/nginx/RPM-GPG-KEY-nginx',
  }

}
