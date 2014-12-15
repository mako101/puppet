class nginx::install {
  package { 'httpd': ensure  => absent }


  file { '/etc/yum.repos.d/nginx.repo':
    ensure => present,
    source => 'puppet:///modules/nginx/nginx.repo',
  }

  package { 'nginx':
    ensure  => latest,
    require => [ Package['httpd'], File['/etc/yum.repos.d/nginx.repo'] ],
  }
}
