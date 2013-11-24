# Install ruby-build

class ruby::build {
  
  include puppet::git
  realize(Package['git'])
  
  $rb_deps = ['openssl-devel', 'curl']

  package { $rb_deps:
    ensure => installed,
  }

  exec {'clone-ruby-build':
    cwd     => '/root',
    command => '/usr/bin/git clone git://github.com/sstephenson/ruby-build.git',
    creates => '/root/ruby-build',
    require => Package[$rb_deps],
  }

  exec {'install-ruby-build':
    cwd     => '/root/ruby-build',
    command => '/root/ruby-build/install.sh',
    creates => '/usr/local/bin/ruby-build',
    require => Exec['clone-ruby-build'],
  }
  
}