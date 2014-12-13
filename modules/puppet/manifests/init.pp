class puppet {
  
  include puppet::hosts, puppet::repo, puppet::git
  
  realize(Package['git'])
  
  File {
    ensure => present,
    owner  => 'git',
    group  => 'git',
    mode   =>  '0755',
  }
  
  package { 'puppet':
    ensure => present,
  }

  file { '/usr/local/bin/papply':
    source => ["puppet:///modules/puppet/papply-${::hostname}",
               'puppet:///modules/puppet/papply'],
  }

  file { '/usr/local/bin/pull-updates':
    require => File['/usr/local/bin/papply'],
    source  => 'puppet:///modules/puppet/pull-updates',
  }


  user { 'git':
    ensure     => present,
    home       => '/home/git',
    managehome => true,
    password   => '$1$Qe3NguvP$iCSlX2TZEPoKivZaNYge1/',
  }
  
  ssh_authorized_key { 'git_ssh':
    user => 'git',
    type => 'rsa',
    key  =>  'AAAAB3NzaC1yc2EAAAABIwAAAQEA4IfkiQE2Gz6v7xUtxnsTkPUZmWrDvbpUiiZLnD9uw5NiuCY+vvhYqABnkzKSu7Sv2YJ3bmDPJMYuSoJ1O9wmDcNFTmWVaL2E7oyXq5mDy2MWNOB6vhjndrXQ3x2Shox3m2U28Wl/aRi6nZzBE55f3u8heA1ZBNEihLTM3j0/CfzzmF6N7VIVXTGW+GaLgLe3nS5f7tUDQ8f8PwIj7ZeHhoI6uXZqBSEEVrtHwHbbzcNt4DzSA0s/HmjspnjD5Yqt0JA0FvLv9/z9cF5Fx8xGmYHE0h7RAYYNn/Lbh+u5wLXffn7+6NhfMpvaGyLh7M3pdMvyyLUWZBEhh2ulou/Rxw==',
  }
 
#  puppet::bashrc {'git_aliases':
#    content => "alias gs='git status' \n
#alias gm='git commit -am' \n
#alias gpp='git pull && git push' \n ",
#  }
# 
}
