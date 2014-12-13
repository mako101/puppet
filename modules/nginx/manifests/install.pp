class nginx::install {
   package { 'httpd': ensure  => absent }

  package { 'nginx':
      ensure  => latest,
      require => [ Package['httpd'], File['/etc/yum.repos.d/nginx.repo'] ],
    }
}