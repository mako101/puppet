class sources {
  vcsrepo {
    '/home/viktor/.rbenv':
      ensure => present,
      group => 'viktor',
      owner => 'viktor',
      path => '/home/viktor/.rbenv',
      provider => git,
      require => [Class['hosts'], group['viktor'], user['viktor'], file['-/home/viktor'], package['git']],
      source => 'git://github.com/sstephenson/rbenv.git';
    '/home/viktor/puppet':
      ensure => present,
      group => 'viktor',
      owner => 'viktor',
      path => '/home/viktor/puppet',
      provider => git,
      require => [Class['hosts'], group['viktor'], user['viktor'], file['-/home/viktor'], package['git']],
      source => 'git@github.com:mako101/puppet.git';
    '/root/ruby-build':
      ensure => present,
      group => 'root',
      owner => 'root',
      path => '/root/ruby-build',
      provider => git,
      require => [Class['hosts'], group['root'], user['root'], file['-/root'], package['git']],
      source => 'git://github.com/sstephenson/ruby-build.git';
  }
}
include sources
