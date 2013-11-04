class puppet::repo {
  
  file {'/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs': 
    ensure => present,
    source => 'puppet:///modules/puppet/RPM-GPG-KEY-puppetlabs',
    owner  => 'root',
    group  => 'root',
    mode   =>  '0644',
    }  
    
  yumrepo {'puppetlabs':
    require  => File['/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs'],
    descr    => 'Puppetabs Repository for Centos 6.4 x64',
    baseurl  => 'http://yum.puppetlabs.com/el/6/products/x86_64/',
    gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
    enabled  => '1',
    gpgcheck => '1',
  }

}
