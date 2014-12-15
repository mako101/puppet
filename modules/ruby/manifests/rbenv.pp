# Install rbenv

class ruby::rbenv ($user = 'viktor') {
  include ruby::build

  exec {'install-rbenv':
    cwd     => "/home/${user}",
    user    => $user,
    command => '/usr/bin/git clone git://github.com/sstephenson/rbenv.git .rbenv',
    creates => "/home/${user}/.rbenv/bin/rbenv",
    require => [Package['git'], Exec['install-ruby-build']],
  }
  
  file {"/home/${user}/.bashrc":
    source => ["puppet:///modules/ruby/home/bashrc.${user}",            'puppet:///modules/ruby/home/bashrc'],
    mode   => '0644',
  }
  
}