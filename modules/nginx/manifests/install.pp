class nginx::install {
  package { 'httpd': ensure  => absent }

  file { '/etc/yum.repos.d/nginx.repo':
    source => 'puppet:///modules/nginx/nginx.repo',
  }

  file { '/etc/pki/rpm-gpg/RPM-GPG-KEY-nginx':
    require => File['/etc/yum.repos.d/nginx.repo'],
    source  => 'puppet:///modules/nginx/RPM-GPG-KEY-nginx',
  }

  package { 'nginx':
    ensure  => latest,
    require => [ Package['httpd'], File['/etc/yum.repos.d/nginx.repo'] ],
  }
}