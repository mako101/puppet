class packages {
  class gem {
    require yum
    package {
      'gpgme':
        ensure => '2.0.2',
        name => 'gpgme',
        provider => gem,
        require => Class['hosts'];
      'hiera':
        ensure => '1.3.0',
        name => 'hiera',
        provider => gem,
        require => Class['hosts'];
      'hiera-gpg':
        ensure => '1.1.0',
        name => 'hiera-gpg',
        provider => gem,
        require => Class['hosts'];
      'json':
        ensure => '1.5.5',
        name => 'json',
        provider => gem,
        require => Class['hosts'];
      'json_pure':
        ensure => '1.8.1',
        name => 'json_pure',
        provider => gem,
        require => Class['hosts'];
    }
  }
  include gem
  class pear {
    require yum
    package {
      'Archive_Tar':
        ensure => '1.3.7',
        name => 'Archive_Tar',
        provider => pear,
        require => Class['hosts'];
      'Console_Getopt':
        ensure => '1.2.3',
        name => 'Console_Getopt',
        provider => pear,
        require => Class['hosts'];
      'PEAR':
        ensure => '1.9.4',
        name => 'PEAR',
        provider => pear,
        require => Class['hosts'];
      'Structures_Graph':
        ensure => '1.0.4',
        name => 'Structures_Graph',
        provider => pear,
        require => Class['hosts'];
      'XML_RPC':
        ensure => '1.5.4',
        name => 'XML_RPC',
        provider => pear,
        require => Class['hosts'];
      'XML_Util':
        ensure => '1.2.1',
        name => 'XML_Util',
        provider => pear,
        require => Class['hosts'];
    }
  }
  include pear
  class pecl {
    require yum
    package {
      'memcache':
        ensure => '3.0.5',
        name => 'memcache',
        provider => pecl,
        require => Class['hosts'];
    }
  }
  include pecl
  class pip {
    require yum
    exec {
      'easy_install pip':
        path => '/usr/bin:/bin:/usr/sbin:/sbin';
    }
    package {
      'Beaker':
        ensure => '1.3.1',
        name => 'Beaker',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'Mako':
        ensure => '0.3.4',
        name => 'Mako',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'Pysa':
        ensure => '0.3b5',
        name => 'Pysa',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'SSSDConfig':
        ensure => '1.9.2',
        name => 'SSSDConfig',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'blueprint':
        ensure => '3.4.2',
        name => 'blueprint',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'cas':
        ensure => '0.15',
        name => 'cas',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'decorator':
        ensure => '3.0.1',
        name => 'decorator',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'distribute':
        ensure => '0.6.10',
        name => 'distribute',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'firstboot':
        ensure => '1.110',
        name => 'firstboot',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'iniparse':
        ensure => '0.3.1',
        name => 'iniparse',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'ipapython':
        ensure => '3.0.0',
        name => 'ipapython',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'netaddr':
        ensure => '0.7.5',
        name => 'netaddr',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'nose':
        ensure => '0.10.4',
        name => 'nose',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'paramiko':
        ensure => '1.7.5',
        name => 'paramiko',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'pip':
        ensure => '1.3.1',
        name => 'pip',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'pykickstart':
        ensure => '1.74.14',
        name => 'pykickstart',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'scdate':
        ensure => '1.9.60',
        name => 'scdate',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'sckdump':
        ensure => '2.0.5',
        name => 'sckdump',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'scservices':
        ensure => '0.99.45',
        name => 'scservices',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'setuptools':
        ensure => '0.6c11',
        name => 'setuptools',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'slip':
        ensure => '0.2.20',
        name => 'slip',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
      'urlgrabber':
        ensure => '3.9.1',
        name => 'urlgrabber',
        provider => pip,
        require => [Class['hosts'], Exec['easy_install pip']];
    }
  }
  include pip
  class yum {
    exec {
      '/usr/sbin/yum-complete-transaction':
        path => '/usr/bin:/bin:/usr/sbin:/sbin';
    }
    package {
      'ConsoleKit-x11':
        description => 'X11-requiring add-ons for ConsoleKit',
        ensure => '0.4.1-3.el6',
        name => 'ConsoleKit-x11',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'GConf2-gtk':
        description => 'Graphical GConf utilities',
        ensure => '2.28.0-6.el6',
        name => 'GConf2-gtk',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'MAKEDEV':
        description => 'A program used for creating device files in /dev',
        ensure => '3.24-6.el6',
        name => 'MAKEDEV',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'NetworkManager-gnome':
        description => 'GNOME applications for use with NetworkManager',
        ensure => '0.8.1-66.el6',
        name => 'NetworkManager-gnome',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'PackageKit-gstreamer-plugin':
        description => 'Install GStreamer codecs using PackageKit',
        ensure => '0.5.8-21.el6',
        name => 'PackageKit-gstreamer-plugin',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'abrt-cli':
        description => 'Virtual package to install all necessary packages for usage from command line environment',
        ensure => '2.0.8-21.el6.centos',
        name => 'abrt-cli',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'acpid':
        description => 'ACPI Event Daemon',
        ensure => '1.0.10-2.1.el6',
        name => 'acpid',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'aic94xx-firmware':
        description => 'Adaptec SAS 44300, 48300, 58300 Sequencer Firmware for AIC94xx driver',
        ensure => '30-2.el6',
        name => 'aic94xx-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'anaconda':
        description => 'Graphical system installer',
        ensure => '13.21.215-1.el6.centos',
        name => 'anaconda',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'at':
        description => 'Job spooling tools',
        ensure => '3.1.10-43.el6_2.1',
        name => 'at',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'atlas':
        description => 'Automatically Tuned Linear Algebra Software',
        ensure => '3.8.4-2.el6',
        name => 'atlas',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'atmel-firmware':
        description => 'Firmware for Atmel at76c50x wireless network chips',
        ensure => '1.3-7.el6',
        name => 'atmel-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'attr':
        description => 'Utilities for managing filesystem extended attributes',
        ensure => '2.4.44-7.el6',
        name => 'attr',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'audit':
        description => 'User space tools for 2.6 kernel auditing',
        ensure => '2.2-2.el6',
        name => 'audit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'augeas-libs':
        description => 'Libraries for augeas',
        ensure => '1.0.0-5.el6',
        name => 'augeas-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'b43-fwcutter':
        description => 'Firmware extraction tool for Broadcom wireless driver',
        ensure => '012-2.2.el6',
        name => 'b43-fwcutter',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'b43-openfwwf':
        description => 'Open firmware for some Broadcom 43xx series WLAN chips',
        ensure => '5.2-4.el6',
        name => 'b43-openfwwf',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'basesystem':
        description => 'The skeleton package which defines a simple Red Hat Enterprise Linux system',
        ensure => '10.0-4.el6',
        name => 'basesystem',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'bfa-firmware':
        description => 'Brocade Fibre Channel HBA Firmware',
        ensure => '3.2.21.1-2.el6',
        name => 'bfa-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'biosdevname':
        description => 'Udev helper for naming devices per BIOS names',
        ensure => '0.5.0-2.el6',
        name => 'biosdevname',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'blktrace':
        description => 'Utilities for performing block layer IO tracing in the linux kernel',
        ensure => '1.0.1-6.el6',
        name => 'blktrace',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'boost-program-options':
        description => 'Runtime component of boost program_options library',
        ensure => '1.41.0-18.el6',
        name => 'boost-program-options',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'brasero-nautilus':
        description => 'Nautilus extension for brasero',
        ensure => '2.28.3-6.el6',
        name => 'brasero-nautilus',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'bridge-utils':
        description => 'Utilities for configuring the linux ethernet bridge',
        ensure => '1.2-10.el6',
        name => 'bridge-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'c-ares':
        description => 'A library that performs asynchronous DNS operations',
        ensure => '1.7.0-6.el6',
        name => 'c-ares',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ca-certificates':
        description => 'The Mozilla CA root certificate bundle',
        ensure => '2013.1.95-65.1.el6_5',
        name => 'ca-certificates',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'centos-release-cr':
        description => 'CentOS continuous release configs',
        ensure => '6-0.el6.centos',
        name => 'centos-release-cr',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'cheese':
        description => 'Application for taking pictures and movies from a webcam',
        ensure => '2.28.1-8.el6',
        name => 'cheese',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'compat-readline5':
        description => 'A library for editing typed command lines',
        ensure => '5.2-17.1.el6',
        name => 'compat-readline5',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'compiz-gnome':
        description => 'Compiz gnome integration bits',
        ensure => '0.8.2-24.el6',
        name => 'compiz-gnome',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'control-center-extra':
        description => 'Additional utilities to configure the GNOME desktop',
        ensure => '2.28.1-39.el6',
        name => 'control-center-extra',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'control-center-filesystem':
        description => 'GNOME Control Center directories',
        ensure => '2.28.1-39.el6',
        name => 'control-center-filesystem',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'coreutils-libs':
        description => 'Libraries for coreutils',
        ensure => '8.4-31.el6',
        name => 'coreutils-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'cpuspeed':
        description => 'CPU frequency adjusting daemon',
        ensure => '1.5-20.el6_4',
        name => 'cpuspeed',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'cracklib-dicts':
        description => 'The standard CrackLib dictionaries',
        ensure => '2.8.16-4.el6',
        name => 'cracklib-dicts',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'crash-gcore-command':
        description => 'Gcore extension module for the crash utility',
        ensure => '1.0-5.el6',
        name => 'crash-gcore-command',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'crash-trace-command':
        description => 'trace extension module for the crash utility',
        ensure => '1.0-4.el6',
        name => 'crash-trace-command',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'Fujitsu Limited';
      'crda':
        description => 'Regulatory compliance daemon for 802.11 wireless networking',
        ensure => '1.1.1_2010.11.22-1.el6',
        name => 'crda',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'crontabs':
        description => 'Root crontab files used to schedule the execution of programs',
        ensure => '1.10-33.el6',
        name => 'crontabs',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'cryptsetup-luks-libs':
        description => 'Cryptsetup shared library',
        ensure => '1.2.0-7.el6',
        name => 'cryptsetup-luks-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'cups-pk-helper':
        description => 'A helper that makes system-config-printer use PolicyKit',
        ensure => '0.0.4-12.el6',
        name => 'cups-pk-helper',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'cyrus-sasl':
        description => 'The Cyrus SASL library',
        ensure => '2.1.23-13.el6_3.1',
        name => 'cyrus-sasl',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'db4-devel':
        description => 'C development files for the Berkeley DB (version 4) library',
        ensure => '4.7.25-18.el6_4',
        name => 'db4-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'db4-utils':
        description => 'Command line tools for managing Berkeley DB (version 4) databases',
        ensure => '4.7.25-18.el6_4',
        name => 'db4-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'dbus-qt':
        description => 'Qt-based library for using D-BUS',
        ensure => '0.70-7.2.el6',
        name => 'dbus-qt',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'device-mapper-multipath':
        description => 'Tools to manage multipath devices using device-mapper',
        ensure => '0.4.9-72.el6',
        name => 'device-mapper-multipath',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'device-mapper-persistent-data':
        description => 'Device-mapper thin provisioning tools',
        ensure => '0.2.8-2.el6',
        name => 'device-mapper-persistent-data',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'dhcp-common':
        description => 'Common files used by ISC dhcp client and server',
        ensure => '4.1.1-38.P1.el6.centos',
        name => 'dhcp-common',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'diffutils':
        description => 'A GNU collection of diff utilities',
        ensure => '2.8.1-28.el6',
        name => 'diffutils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'dmraid':
        description => 'dmraid (Device-mapper RAID tool and library)',
        ensure => '1.0.0.rc16-11.el6',
        name => 'dmraid',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'docbook-dtds':
        description => 'SGML and XML document type definitions for DocBook',
        ensure => '1.0-51.el6',
        name => 'docbook-dtds',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'dracut-kernel':
        description => 'Metapackage to build generic initramfs with dracut with only kernel modules',
        ensure => '004-336.el6_5.2',
        name => 'dracut-kernel',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ed':
        description => 'The GNU line editor',
        ensure => '1.1-3.3.el6',
        name => 'ed',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'efibootmgr':
        description => 'EFI Boot Manager',
        ensure => '0.5.4-11.el6',
        name => 'efibootmgr',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'eggdbus':
        description => 'Experimental D-Bus bindings for GObject',
        ensure => '0.6-3.el6',
        name => 'eggdbus',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'eject':
        description => 'A program that ejects removable media using software control',
        ensure => '2.1.5-17.el6',
        name => 'eject',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ekiga':
        description => 'A Gnome based SIP/H323 teleconferencing application',
        ensure => '3.2.6-4.el6',
        name => 'ekiga',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'elrepo-release':
        description => 'ELRepo.org Community Enterprise Linux Repository release file',
        ensure => '6-5.el6.elrepo',
        name => 'elrepo-release',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'The ELRepo Project (http://elrepo.org)';
      'enscript':
        description => 'A plain ASCII to PostScript converter',
        ensure => '1.6.4-15.el6',
        name => 'enscript',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'eog':
        description => 'Eye of GNOME image viewer',
        ensure => '2.28.2-4.el6',
        name => 'eog',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'epel-release':
        description => 'Extra Packages for Enterprise Linux repository configuration',
        ensure => '6-8',
        name => 'epel-release',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'Fedora Project';
      'ethtool':
        description => 'Ethernet settings tool for PCI ethernet cards',
        ensure => '3.5-1.el6',
        name => 'ethtool',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'evince':
        description => 'Document viewer',
        ensure => '2.28.2-14.el6_0.1',
        name => 'evince',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'evince-dvi':
        description => 'Evince backend for dvi files',
        ensure => '2.28.2-14.el6_0.1',
        name => 'evince-dvi',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'evolution-exchange':
        description => 'Evolution plugin to interact with MS Exchange Server',
        ensure => '2.32.3-16.el6',
        name => 'evolution-exchange',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'evolution-help':
        description => 'Help files for evolution',
        ensure => '2.32.3-30.el6',
        name => 'evolution-help',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'evolution-mapi':
        description => 'Evolution extension for MS Exchange 2007 servers',
        ensure => '0.32.2-12.el6',
        name => 'evolution-mapi',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'file-libs':
        description => 'Libraries for applications using libmagic',
        ensure => '5.04-15.el6',
        name => 'file-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'file-roller':
        description => 'Tool for viewing and creating archives',
        ensure => '2.28.2-6.el6',
        name => 'file-roller',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'fipscheck':
        description => 'A library for integrity verification of FIPS validated modules',
        ensure => '1.2.0-7.el6',
        name => 'fipscheck',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'firefox':
        description => 'Mozilla Firefox Web browser',
        ensure => '24.2.0-1.0.1.el6.centos',
        name => 'firefox',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'flex':
        description => 'A tool for creating scanners (text pattern recognizers)',
        ensure => '2.5.35-8.el6',
        name => 'flex',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'foomatic':
        description => 'Database of printers and printer drivers',
        ensure => '4.0.4-3.el6',
        name => 'foomatic',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'foomatic-db-ppds':
        description => 'PPDs from printer manufacturers',
        ensure => '4.0-7.20091126.el6',
        name => 'foomatic-db-ppds',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gcalctool':
        description => 'A desktop calculator',
        ensure => '5.28.2-3.el6',
        name => 'gcalctool',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gcc':
        description => 'Various compilers (C, C++, Objective-C, Java, ...)',
        ensure => '4.4.7-4.el6',
        name => 'gcc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gdb':
        description => 'A GNU source-level debugger for C, C++, Java and other languages',
        ensure => '7.2-60.el6_4.1',
        name => 'gdb',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gdbm-devel':
        description => 'Development libraries and header files for the gdbm library',
        ensure => '1.8.0-36.el6',
        name => 'gdbm-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gdm-plugin-fingerprint':
        description => 'GDM fingerprint plugin',
        ensure => '2.30.4-52.el6',
        name => 'gdm-plugin-fingerprint',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gdm-user-switch-applet':
        description => 'GDM User Switcher Panel Applet',
        ensure => '2.30.4-52.el6',
        name => 'gdm-user-switch-applet',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gedit':
        description => 'Text editor for the GNOME desktop',
        ensure => '2.28.4-3.el6',
        name => 'gedit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'geoclue':
        description => 'A modular geoinformation service',
        ensure => '0.11.1.1-0.13.20091026git73b6729.el6',
        name => 'geoclue',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gettext':
        description => 'GNU libraries and utilities for producing multi-lingual messages',
        ensure => '0.17-16.el6',
        name => 'gettext',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ghostscript-fonts':
        description => 'Fonts for the Ghostscript PostScript interpreter',
        ensure => '5.50-23.1.el6',
        name => 'ghostscript-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'giflib':
        description => 'Library for manipulating GIF format image files',
        ensure => '4.1.6-3.1.el6',
        name => 'giflib',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gimp-data-extras':
        description => 'Extra files for GIMP',
        ensure => '2.0.2-3.1.el6',
        name => 'gimp-data-extras',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gimp-help':
        description => 'Help files for GIMP',
        ensure => '2.4.2-5.1.el6',
        name => 'gimp-help',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gimp-help-browser':
        description => 'GIMP help browser plug-in',
        ensure => '2.6.9-6.el6_5',
        name => 'gimp-help-browser',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'git':
        description => 'Fast Version Control System',
        ensure => '1.7.1-3.el6_4.1',
        name => 'git',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'glibc-headers':
        description => 'Header files for development using standard C libraries.',
        ensure => '2.12-1.132.el6',
        name => 'glibc-headers',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-applets':
        description => 'Small applications for the GNOME panel',
        ensure => '2.28.0-7.el6.centos',
        name => 'gnome-applets',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-backgrounds':
        description => 'Desktop backgrounds packaged with the GNOME desktop',
        ensure => '2.28.0-2.el6',
        name => 'gnome-backgrounds',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-disk-utility':
        description => 'Disk management application',
        ensure => '2.30.1-2.el6',
        name => 'gnome-disk-utility',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-doc-utils-stylesheets':
        description => 'XSL stylesheets used by gnome-doc-utils',
        ensure => '0.18.1-1.el6',
        name => 'gnome-doc-utils-stylesheets',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-media':
        description => 'GNOME media programs',
        ensure => '2.29.91-6.el6',
        name => 'gnome-media',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-packagekit':
        description => 'Session applications to manage packages',
        ensure => '2.28.3-7.el6',
        name => 'gnome-packagekit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-pilot':
        description => 'GNOME pilot programs',
        ensure => '2.0.17-9.el6',
        name => 'gnome-pilot',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-power-manager':
        description => 'GNOME power management service',
        ensure => '2.28.3-7.el6_4',
        name => 'gnome-power-manager',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-python2-canvas':
        description => 'Python bindings for the GNOME Canvas',
        ensure => '2.28.0-3.el6',
        name => 'gnome-python2-canvas',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-python2-extras':
        description => 'Additional PyGNOME Python extension modules',
        ensure => '2.25.3-20.el6',
        name => 'gnome-python2-extras',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-python2-gnomekeyring':
        description => 'Python bindings for interacting with gnome-keyring',
        ensure => '2.28.0-5.el6',
        name => 'gnome-python2-gnomekeyring',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-screensaver':
        description => 'GNOME Screensaver',
        ensure => '2.28.3-28.el6',
        name => 'gnome-screensaver',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-session-xsession':
        description => 'gnome-session desktop file',
        ensure => '2.28.0-18.el6',
        name => 'gnome-session-xsession',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-system-monitor':
        description => 'Process and resource monitor',
        ensure => '2.28.0-11.el6',
        name => 'gnome-system-monitor',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-user-docs':
        description => 'GNOME User Documentation',
        ensure => '2.28.0-4.el6',
        name => 'gnome-user-docs',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnome-utils':
        description => 'GNOME utility programs',
        ensure => '2.28.1-10.el6',
        name => 'gnome-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gnote':
        description => 'Note-taking application',
        ensure => '0.6.3-3.el6',
        name => 'gnote',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gok':
        description => 'GNOME Onscreen Keyboard',
        ensure => '2.28.1-5.el6',
        name => 'gok',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'grub':
        description => 'Grand Unified Boot Loader.',
        ensure => '0.97-83.el6',
        name => 'grub',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gstreamer-tools':
        description => 'common tools and files for GStreamer streaming media framework',
        ensure => '0.10.29-1.el6',
        name => 'gstreamer-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gthumb':
        description => 'Image viewer, editor, organizer',
        ensure => '2.10.11-8.el6',
        name => 'gthumb',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gtk2-engines':
        description => 'Theme engines for GTK+ 2.0',
        ensure => '2.18.4-5.el6.centos',
        name => 'gtk2-engines',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gtk2-immodule-xim':
        description => 'XIM support for GTK+',
        ensure => '2.20.1-4.el6',
        name => 'gtk2-immodule-xim',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gutenprint-cups':
        description => 'CUPS drivers for Canon, Epson, HP and compatible printers',
        ensure => '5.2.5-2.el6',
        name => 'gutenprint-cups',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gutenprint-plugin':
        description => 'GIMP plug-in for gutenprint',
        ensure => '5.2.5-2.el6',
        name => 'gutenprint-plugin',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gvfs-afc':
        description => 'AFC support for gvfs',
        ensure => '1.4.3-15.el6',
        name => 'gvfs-afc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gvfs-archive':
        description => 'Archiving support for gvfs',
        ensure => '1.4.3-15.el6',
        name => 'gvfs-archive',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gvfs-gphoto2':
        description => 'gphoto2 support for gvfs',
        ensure => '1.4.3-15.el6',
        name => 'gvfs-gphoto2',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'gvfs-obexftp':
        description => 'ObexFTP support for gvfs',
        ensure => '1.4.3-15.el6',
        name => 'gvfs-obexftp',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'hal-info':
        description => 'Device information files for HAL',
        ensure => '20090716-3.1.el6',
        name => 'hal-info',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'hal-storage-addon':
        description => 'Storage polling support for HAL',
        ensure => '0.5.14-11.el6',
        name => 'hal-storage-addon',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'haproxy':
        description => 'HA-Proxy is a TCP/HTTP reverse proxy for high availability environments',
        ensure => '1.4.24-2.el6',
        name => 'haproxy',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'hdparm':
        description => 'A utility for displaying and/or setting hard disk parameters',
        ensure => '9.43-4.el6',
        name => 'hdparm',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'hpijs':
        description => 'HP Printer Drivers',
        ensure => '3.12.4-4.el6_4.1',
        name => 'hpijs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'hplip-common':
        description => 'Files needed by the HPLIP printer and scanner drivers',
        ensure => '3.12.4-4.el6_4.1',
        name => 'hplip-common',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'htdig':
        description => 'ht://Dig - Web search engine',
        ensure => '3.2.0-0.10.b6.el6',
        name => 'htdig',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-anthy':
        description => 'The Anthy engine for IBus input platform',
        ensure => '1.2.1-3.el6',
        name => 'ibus-anthy',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-chewing':
        description => 'The Chewing engine for IBus input platform',
        ensure => '1.3.5.20100714-4.el6',
        name => 'ibus-chewing',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-hangul':
        description => 'The Hangul engine for IBus input platform',
        ensure => '1.3.0.20100329-6.el6',
        name => 'ibus-hangul',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-m17n':
        description => 'The M17N engine for IBus platform',
        ensure => '1.3.0-2.el6',
        name => 'ibus-m17n',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-pinyin':
        description => 'The Chinese Pinyin and Bopomofo engines for IBus input platform',
        ensure => '1.3.8-1.el6',
        name => 'ibus-pinyin',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-qt':
        description => 'Qt IBus library and Qt input method plugin',
        ensure => '1.3.0-2.el6',
        name => 'ibus-qt',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-rawcode':
        description => 'The Rawcode engine for IBus input platform',
        ensure => '1.3.0.20100421-2.el6',
        name => 'ibus-rawcode',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-sayura':
        description => 'The Sinhala engine for IBus input platform',
        ensure => '1.2.99.20100209-3.el6',
        name => 'ibus-sayura',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ibus-table-additional':
        description => 'Additional tables for general table engine of IBus',
        ensure => '1.2.0.20100111-4.el6',
        name => 'ibus-table-additional',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'imsettings':
        description => 'Delivery framework for general Input Method configuration',
        ensure => '0.108.0-3.6.el6',
        name => 'imsettings',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'inkscape':
        description => 'Vector-based drawing program using SVG',
        ensure => '0.47-6.el6',
        name => 'inkscape',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ipa-client':
        description => 'IPA authentication for use on clients',
        ensure => '3.0.0-37.el6',
        name => 'ipa-client',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iptables-ipv6':
        description => 'IPv6 support for iptables',
        ensure => '1.4.7-11.el6',
        name => 'iptables-ipv6',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iptraf':
        description => 'A console-based network monitoring utility',
        ensure => '3.0.1-14.el6',
        name => 'iptraf',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iputils':
        description => 'Network monitoring tools including ping',
        ensure => '20071127-17.el6_4.2',
        name => 'iputils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ipw2100-firmware':
        description => 'Firmware for Intel® PRO/Wireless 2100 network adaptors',
        ensure => '1.3-11.el6',
        name => 'ipw2100-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ipw2200-firmware':
        description => 'Firmware for Intel® PRO/Wireless 2200 network adaptors',
        ensure => '3.1-4.el6',
        name => 'ipw2200-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'irqbalance':
        description => 'IRQ balancing daemon',
        ensure => '1.0.4-6.el6',
        name => 'irqbalance',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ivtv-firmware':
        description => 'Firmware for the Hauppauge PVR 250/350/150/500/USB2 model series',
        ensure => '20080701-20.2',
        name => 'ivtv-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl100-firmware':
        description => 'Firmware for Intel(R) Wireless WiFi Link 100 Series Adapters',
        ensure => '39.31.5.1-1.el6',
        name => 'iwl100-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl1000-firmware':
        description => 'Firmware for Intel® PRO/Wireless 1000 B/G/N network adaptors',
        ensure => '39.31.5.1-1.el6',
        name => 'iwl1000-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl3945-firmware':
        description => 'Firmware for Intel® PRO/Wireless 3945 A/B/G network adaptors',
        ensure => '15.32.2.9-4.el6',
        name => 'iwl3945-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl4965-firmware':
        description => 'Firmware for Intel® PRO/Wireless 4965 A/G/N network adaptors',
        ensure => '228.61.2.24-2.1.el6',
        name => 'iwl4965-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl5000-firmware':
        description => 'Firmware for Intel® PRO/Wireless 5000 A/G/N network adaptors',
        ensure => '8.83.5.1_1-1.el6_1.1',
        name => 'iwl5000-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl5150-firmware':
        description => 'Firmware for Intel® Wireless 5150 A/G/N network adaptors',
        ensure => '8.24.2.2-1.el6',
        name => 'iwl5150-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl6000-firmware':
        description => 'Firmware for Intel(R) Wireless WiFi Link 6000 Series AGN Adapter',
        ensure => '9.221.4.1-1.el6',
        name => 'iwl6000-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl6000g2a-firmware':
        description => 'Firmware for Intel(R) Wireless WiFi Link 6005 Series Adapters',
        ensure => '17.168.5.3-1.el6',
        name => 'iwl6000g2a-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'iwl6050-firmware':
        description => 'Firmware for Intel(R) Wireless WiFi Link 6050 Series Adapters',
        ensure => '41.28.5.1-2.el6',
        name => 'iwl6050-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'jcommon-serializer':
        description => 'JFree Java General Serialization Framework',
        ensure => '0.3.0-3.1.el6',
        name => 'jcommon-serializer',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'k3b':
        description => 'CD/DVD burning application',
        ensure => '1.0.5-13.el6',
        name => 'k3b',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kbd-misc':
        description => 'Data for kbd package',
        ensure => '1.15-11.el6',
        name => 'kbd-misc',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kcoloredit':
        description => 'A color palette Editor',
        ensure => '4.3.3-2.el6',
        name => 'kcoloredit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-i18n-British':
        description => 'British(en_GB) English support for KDE3',
        ensure => '3.5.10-11.el6',
        name => 'kde-i18n-British',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-i18n-Dutch':
        description => 'Dutch(nl) language support for KDE3',
        ensure => '3.5.10-11.el6',
        name => 'kde-i18n-Dutch',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-i18n-French':
        description => 'French(fr) language support for KDE3',
        ensure => '3.5.10-11.el6',
        name => 'kde-i18n-French',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-i18n-German':
        description => 'German(de) language support for KDE3',
        ensure => '3.5.10-11.el6',
        name => 'kde-i18n-German',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-l10n-British':
        description => 'British English support for KDE',
        ensure => '4.3.4-5.el6',
        name => 'kde-l10n-British',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-l10n-Dutch':
        description => 'Dutch language support for KDE',
        ensure => '4.3.4-5.el6',
        name => 'kde-l10n-Dutch',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-l10n-French':
        description => 'French language support for KDE',
        ensure => '4.3.4-5.el6',
        name => 'kde-l10n-French',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-l10n-German':
        description => 'German language support for KDE',
        ensure => '4.3.4-5.el6',
        name => 'kde-l10n-German',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-settings-kdm':
        description => 'Configuration files for kdm',
        ensure => '4.3.1-2.el6.centos',
        name => 'kde-settings-kdm',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kde-settings-pulseaudio':
        description => 'Enable pulseaudio support in KDE',
        ensure => '4.3.1-2.el6.centos',
        name => 'kde-settings-pulseaudio',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdeaccessibility':
        description => 'KDE Accessibility',
        ensure => '4.3.4-5.el6',
        name => 'kdeaccessibility',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdeadmin':
        description => 'KDE Administrative tools',
        ensure => '4.3.4-5.el6',
        name => 'kdeadmin',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdebase-libs':
        description => 'Runtime libraries for kdebase',
        ensure => '4.3.4-6.el6',
        name => 'kdebase-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdebase-workspace-wallpapers':
        description => 'KDE wallpapers',
        ensure => '4.3.4-24.el6',
        name => 'kdebase-workspace-wallpapers',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdegames':
        description => 'KDE Games',
        ensure => '4.3.4-5.el6',
        name => 'kdegames',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdegraphics':
        description => 'K Desktop Environment - Graphics Applications',
        ensure => '4.3.4-6.el6',
        name => 'kdegraphics',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdelibs-common':
        description => 'Common files for KDE 3 and KDE 4 libraries',
        ensure => '4.3.4-20.el6_4.1',
        name => 'kdelibs-common',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdemultimedia-libs':
        description => 'Runtime libraries for kdemultimedia',
        ensure => '4.3.4-3.el6',
        name => 'kdemultimedia-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdenetwork':
        description => 'KDE Network Applications',
        ensure => '4.3.4-11.el6_0.1',
        name => 'kdenetwork',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kdeutils':
        description => 'KDE Utilities',
        ensure => '4.3.4-7.el6',
        name => 'kdeutils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kernel-devel':
        description => 'Development package for building kernel modules to match the kernel',
        ensure => '2.6.32-431.1.2.0.1.el6',
        name => 'kernel-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kernel-firmware':
        description => 'Firmware files used by the Linux kernel',
        ensure => '2.6.32-431.1.2.0.1.el6',
        name => 'kernel-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'keyutils':
        description => 'Linux Key Management Utilities',
        ensure => '1.4-4.el6',
        name => 'keyutils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kiconedit':
        description => 'An icon editor',
        ensure => '4.3.3-1.el6',
        name => 'kiconedit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kio_sysinfo':
        description => 'KIO slave which shows basic system information',
        ensure => '20090930-1.el6',
        name => 'kio_sysinfo',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kipi-plugins':
        description => 'Plugins to use with Kipi',
        ensure => '0.8.0-5.el6',
        name => 'kipi-plugins',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kmid':
        description => 'A midi/karaoke player for KDE',
        ensure => '2.0-0.14.20080213svn.el6',
        name => 'kmid',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kmod-drbd83':
        description => 'drbd83 kernel module(s)',
        ensure => '8.3.16-1.el6.elrepo',
        name => 'kmod-drbd83',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'The ELRepo Project (http://elrepo.org)';
      'konq-plugins-doc':
        description => 'Documentation files for konq-plugins',
        ensure => '4.3.3-5.el6',
        name => 'konq-plugins-doc',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ksig':
        description => 'A graphical application to manage multiple email signatures',
        ensure => '1.1-0.10.20080213.el6',
        name => 'ksig',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ksshaskpass':
        description => 'A KDE version of ssh-askpass with KWallet support',
        ensure => '0.5.1-4.1.el6',
        name => 'ksshaskpass',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ksysguardd':
        description => 'Performance monitor daemon',
        ensure => '4.3.4-24.el6',
        name => 'ksysguardd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'kurdit-unikurd-web-fonts':
        description => 'A widely used Kurdish font for Arabic-like scripts and Latin',
        ensure => '20020502-6.el6',
        name => 'kurdit-unikurd-web-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'latrace':
        description => 'LD_AUDIT feature frontend for glibc 2.4+',
        ensure => '0.5.9-2.el6',
        name => 'latrace',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ledmon':
        description => 'Enclosure LED Utilities',
        ensure => '0.78-1.el6',
        name => 'ledmon',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libIDL':
        description => 'Library for parsing IDL (Interface Definition Language)',
        ensure => '0.8.13-2.1.el6',
        name => 'libIDL',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libX11-common':
        description => 'Common data for libX11',
        ensure => '1.5.0-4.el6',
        name => 'libX11-common',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libXfont':
        description => 'X.Org X11 libXfont runtime library',
        ensure => '1.4.5-2.el6',
        name => 'libXfont',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libXres':
        description => 'X-Resource extension client library',
        ensure => '1.0.6-2.el6',
        name => 'libXres',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libXvMC':
        description => 'X.Org X11 libXvMC runtime library',
        ensure => '1.0.7-2.el6',
        name => 'libXvMC',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libavc1394':
        description => 'Audio/Video Control library for IEEE-1394 devices',
        ensure => '0.5.3-9.1.el6',
        name => 'libavc1394',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libcdio':
        description => 'CD-ROM input and control library',
        ensure => '0.81-3.1.el6',
        name => 'libcdio',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libcroco':
        description => 'A CSS2 parsing library',
        ensure => '0.6.2-5.el6',
        name => 'libcroco',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libdaemon':
        description => 'Library for writing UNIX daemons',
        ensure => '0.14-1.el6',
        name => 'libdaemon',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libdc1394':
        description => '1394-based digital camera control library',
        ensure => '2.1.2-3.4.el6',
        name => 'libdc1394',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libdhash':
        description => 'Dynamic hash table',
        ensure => '0.4.2-9.el6',
        name => 'libdhash',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libdv':
        description => 'Software decoder for DV format video',
        ensure => '1.0.0-8.1.el6',
        name => 'libdv',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libdvdread':
        description => 'A library for reading DVD video discs based on Ogle code',
        ensure => '4.1.4-0.3.svn1183.el6',
        name => 'libdvdread',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libedit':
        description => 'The NetBSD Editline library',
        ensure => '2.11-4.20080712cvs.1.el6',
        name => 'libedit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libertas-usb8388-firmware':
        description => 'Firmware for Marvell Libertas USB 8388 Network Adapter',
        ensure => '5.110.22.p23-3.1.el6',
        name => 'libertas-usb8388-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libevent':
        description => 'Abstract asynchronous event notification library',
        ensure => '1.4.13-4.el6',
        name => 'libevent',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libffi':
        description => 'A portable foreign function interface library',
        ensure => '3.0.5-3.2.el6',
        name => 'libffi',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libformula':
        description => 'Formula Parser',
        ensure => '0.2.0-3.OOo31.1.el6',
        name => 'libformula',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libgail-gnome':
        description => 'Accessibility implementation for GTK+ and GNOME libraries',
        ensure => '1.20.1-4.1.el6.centos',
        name => 'libgail-gnome',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libgsf':
        description => 'GNOME Structured File library',
        ensure => '1.14.15-5.el6',
        name => 'libgsf',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libhbalinux':
        description => 'FC-HBAAPI implementation using scsi_transport_fc interfaces',
        ensure => '1.0.16-1.el6',
        name => 'libhbalinux',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libiec61883':
        description => 'Streaming library for IEEE1394',
        ensure => '1.2.0-4.el6',
        name => 'libiec61883',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libini_config':
        description => 'INI file parser for C',
        ensure => '0.6.1-9.el6',
        name => 'libini_config',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libipa_hbac-python':
        description => 'Python bindings for the FreeIPA HBAC Evaluator library',
        ensure => '1.9.2-129.el6',
        name => 'libipa_hbac-python',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libitm':
        description => 'The GNU Transactional Memory library',
        ensure => '4.8.1-4.2.1.el6',
        name => 'libitm',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'liblayout':
        description => 'CSS based layouting framework',
        ensure => '0.2.9-4.OOo31.el6',
        name => 'liblayout',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libldb':
        description => 'A schema-less, ldap like, API and database',
        ensure => '1.1.13-3.el6',
        name => 'libldb',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libnih':
        description => 'Lightweight application development library',
        ensure => '1.0.1-7.el6',
        name => 'libnih',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-draw':
        description => 'LibreOffice Drawing Application',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-draw',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-emailmerge':
        description => 'Email mail-merge component for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-emailmerge',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-headless':
        description => 'LibreOffice Headless plug-in',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-headless',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-javafilter':
        description => 'Optional javafilter module for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-javafilter',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-langpack-de':
        description => 'German language pack for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-langpack-de',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-langpack-en':
        description => 'English language pack for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-langpack-en',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-langpack-fr':
        description => 'French language pack for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-langpack-fr',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-langpack-nl':
        description => 'Dutch language pack for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-langpack-nl',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-math':
        description => 'LibreOffice Equation Editor Application',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-math',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-ogltrans':
        description => '3D OpenGL slide transitions for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-ogltrans',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-opensymbol-fonts':
        description => 'LibreOffice dingbats font',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-opensymbol-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-presentation-minimizer':
        description => 'Shrink LibreOffice presentations',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-presentation-minimizer',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-report-builder':
        description => 'Create database reports from LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-report-builder',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-wiki-publisher':
        description => 'Create Wiki articles on MediaWiki servers with LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-wiki-publisher',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreoffice-xsltfilter':
        description => 'Optional xsltfilter module for LibreOffice',
        ensure => '4.0.4.2-9.el6',
        name => 'libreoffice-xsltfilter',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreport-compat':
        description => 'libreport\'s compat layer for obsoleted \'report\' package',
        ensure => '2.0.9-19.el6.centos',
        name => 'libreport-compat',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreport-gtk':
        description => 'GTK front-end for libreport',
        ensure => '2.0.9-19.el6.centos',
        name => 'libreport-gtk',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreport-newt':
        description => 'libreport\'s newt interface',
        ensure => '2.0.9-19.el6.centos',
        name => 'libreport-newt',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreport-plugin-reportuploader':
        description => 'libreport\'s reportuploader plugin',
        ensure => '2.0.9-19.el6.centos',
        name => 'libreport-plugin-reportuploader',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libreport-python':
        description => 'Python bindings for report-libs',
        ensure => '2.0.9-19.el6.centos',
        name => 'libreport-python',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libsane-hpaio':
        description => 'SANE driver for scanners in HP\'s multi-function devices',
        ensure => '3.12.4-4.el6_4.1',
        name => 'libsane-hpaio',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libsepol-devel':
        description => 'Header files and libraries used to build policy manipulation tools',
        ensure => '2.0.41-4.el6',
        name => 'libsepol-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libshout':
        description => 'Icecast source streaming library',
        ensure => '2.2.2-5.1.el6',
        name => 'libshout',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libss':
        description => 'Command line interface parsing library',
        ensure => '1.41.12-18.el6',
        name => 'libss',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libssh2':
        description => 'A library implementing the SSH2 protocol',
        ensure => '1.4.2-1.el6',
        name => 'libssh2',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libsss_idmap':
        description => 'FreeIPA Idmap library',
        ensure => '1.9.2-129.el6',
        name => 'libsss_idmap',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libtextcat':
        description => 'Text Categorization Library',
        ensure => '2.2-10.el6',
        name => 'libtextcat',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libthai':
        description => 'Thai language support routines',
        ensure => '0.1.12-3.el6',
        name => 'libthai',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libutempter':
        description => 'A privileged helper for utmp/wtmp updates',
        ensure => '1.1.5-4.1.el6',
        name => 'libutempter',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libvisual':
        description => 'Abstraction library for audio visualisation plugins',
        ensure => '0.4.0-9.1.el6',
        name => 'libvisual',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'libwacom':
        description => 'Tablet Information Client Library',
        ensure => '0.5-5.el6',
        name => 'libwacom',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lklug-fonts':
        description => 'Fonts for Sinhala language',
        ensure => '0.6-4.20090803cvs.el6',
        name => 'lklug-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lldpad':
        description => 'Intel LLDP Agent',
        ensure => '0.9.46-2.el6',
        name => 'lldpad',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lockdev':
        description => 'A library for locking devices',
        ensure => '1.0.1-18.el6',
        name => 'lockdev',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'logrotate':
        description => 'Rotates, compresses, removes and mails system log files',
        ensure => '3.7.8-17.el6',
        name => 'logrotate',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-assamese-fonts':
        description => 'Free Assamese font',
        ensure => '2.4.3-5.el6',
        name => 'lohit-assamese-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-bengali-fonts':
        description => 'Free Bengali font',
        ensure => '2.4.3-6.el6',
        name => 'lohit-bengali-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-devanagari-fonts':
        description => 'Free Devanagari Script Font',
        ensure => '2.4.3-7.el6',
        name => 'lohit-devanagari-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-gujarati-fonts':
        description => 'Free Gujarati font',
        ensure => '2.4.4-4.el6',
        name => 'lohit-gujarati-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-kannada-fonts':
        description => 'Free Kannada font',
        ensure => '2.4.5-6.el6',
        name => 'lohit-kannada-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-oriya-fonts':
        description => 'Free Oriya Font',
        ensure => '2.4.3-6.el6',
        name => 'lohit-oriya-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-punjabi-fonts':
        description => 'Free Punjabi font',
        ensure => '2.4.4-2.el6',
        name => 'lohit-punjabi-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-tamil-fonts':
        description => 'Free Tamil font',
        ensure => '2.4.5-5.el6',
        name => 'lohit-tamil-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lohit-telugu-fonts':
        description => 'Free Telugu font',
        ensure => '2.4.5-6.el6',
        name => 'lohit-telugu-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lpsolve':
        description => 'A Mixed Integer Linear Programming (MILP) solver',
        ensure => '5.5.0.15-2.el6',
        name => 'lpsolve',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lsof':
        description => 'A utility which lists open files on a Linux/UNIX system',
        ensure => '4.82-4.el6',
        name => 'lsof',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ltrace':
        description => 'Tracks runtime library calls from dynamically linked executables',
        ensure => '0.5-23.45svn.el6',
        name => 'ltrace',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lucene':
        description => 'High-performance, full-featured text search engine',
        ensure => '2.3.1-5.9.el6',
        name => 'lucene',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'lvm2-libs':
        description => 'Shared libraries for lvm2',
        ensure => '2.02.100-8.el6',
        name => 'lvm2-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-assamese':
        description => 'Contributed input maps for Assamese',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-assamese',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-bengali':
        description => 'Contributed input maps for Bengali',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-bengali',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-gujarati':
        description => 'Contributed input maps for Gujarati',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-gujarati',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-hindi':
        description => 'Contributed input maps for Hindi',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-hindi',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-kannada':
        description => 'Contributed input maps for Kannada',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-kannada',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-maithili':
        description => 'Contributed input maps for Maithili',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-maithili',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-malayalam':
        description => 'Contributed input maps for Malayalam',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-malayalam',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-marathi':
        description => 'Contributed input maps for Marathi',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-marathi',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-oriya':
        description => 'Contributed input maps for Oriya',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-oriya',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-punjabi':
        description => 'Contributed input maps for Punjabi',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-punjabi',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-sinhala':
        description => 'Contributed input maps for Sinhala',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-sinhala',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-tamil':
        description => 'Contributed input maps for Tamil',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-tamil',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-telugu':
        description => 'Contributed input maps for Telugu',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-telugu',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-contrib-urdu':
        description => 'Contributed input maps for Urdu',
        ensure => '1.1.10-4.el6_1.1',
        name => 'm17n-contrib-urdu',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'm17n-db-thai':
        description => 'm17n-db input maps for Thai',
        ensure => '1.5.5-1.1.el6',
        name => 'm17n-db-thai',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'madan-fonts':
        description => 'Font for Nepali language',
        ensure => '2.000-3.el6',
        name => 'madan-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'man-pages':
        description => 'Man (manual) pages from the Linux Documentation Project',
        ensure => '3.22-20.el6',
        name => 'man-pages',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'man-pages-fr':
        description => 'French version of the Linux man-pages',
        ensure => '3.23-10.el6',
        name => 'man-pages-fr',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'man-pages-overrides':
        description => 'Complementary and updated manual pages',
        ensure => '6.5.2-1.el6',
        name => 'man-pages-overrides',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mcpp':
        description => 'Alternative C/C++ preprocessor',
        ensure => '2.7.2-4.1.el6',
        name => 'mcpp',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'memtest86+':
        description => 'Stand-alone memory tester for x86 and x86-64 computers',
        ensure => '4.10-2.el6',
        name => 'memtest86+',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'microcode_ctl':
        description => 'Tool to update x86/x86-64 CPU microcode.',
        ensure => '1.17-17.el6',
        name => 'microcode_ctl',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mingetty':
        description => 'A compact getty program for virtual consoles only',
        ensure => '1.08-5.el6',
        name => 'mingetty',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mlocate':
        description => 'An utility for finding files by name',
        ensure => '0.22.2-4.el6',
        name => 'mlocate',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mod_dnssd':
        description => 'An Apache HTTPD module which adds Zeroconf support',
        ensure => '0.6-2.el6',
        name => 'mod_dnssd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mousetweaks':
        description => 'Mouse accessibility support for the GNOME desktop',
        ensure => '2.28.2-1.el6',
        name => 'mousetweaks',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mt-st':
        description => 'Tool for controlling tape drives',
        ensure => '1.1-5.el6',
        name => 'mt-st',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mtdev':
        description => 'Multitouch Protocol Translation Library',
        ensure => '1.1.2-5.el6',
        name => 'mtdev',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mtr':
        description => 'A network diagnostic tool',
        ensure => '0.75-5.el6',
        name => 'mtr',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mtx':
        description => 'SCSI media changer control program',
        ensure => '1.3.12-5.el6',
        name => 'mtx',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'mysql-server':
        description => 'The MySQL server and related files',
        ensure => '5.1.71-1.el6',
        name => 'mysql-server',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nano':
        description => 'A small text editor',
        ensure => '2.0.9-7.el6',
        name => 'nano',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nautilus':
        description => 'File manager for GNOME',
        ensure => '2.28.4-19.el6',
        name => 'nautilus',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nautilus-open-terminal':
        description => 'Nautilus extension for an open terminal shortcut',
        ensure => '0.17-4.el6',
        name => 'nautilus-open-terminal',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nautilus-sendto':
        description => 'Nautilus context menu for sending files',
        ensure => '2.28.2-4.el6',
        name => 'nautilus-sendto',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nc':
        description => 'Reads and writes data across network connections using TCP or UDP',
        ensure => '1.84-22.el6',
        name => 'nc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ncurses':
        description => 'Ncurses support utilities',
        ensure => '5.7-3.20090208.el6',
        name => 'ncurses',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ncurses-base':
        description => 'Descriptions of common terminals',
        ensure => '5.7-3.20090208.el6',
        name => 'ncurses-base',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'net-tools':
        description => 'Basic networking tools',
        ensure => '1.60-110.el6_2',
        name => 'net-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nfs-utils-lib':
        description => 'Network File System Support Library',
        ensure => '1.1.5-6.el6',
        name => 'nfs-utils-lib',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nfs4-acl-tools':
        description => 'The nfs4 ACL tools',
        ensure => '0.3.3-6.el6',
        name => 'nfs4-acl-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'notification-daemon':
        description => 'Desktop Notification Daemon',
        ensure => '0.5.0-1.el6',
        name => 'notification-daemon',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nspluginwrapper':
        description => 'A compatibility layer for Netscape 4 plugins',
        ensure => '1.4.4-1.el6_3',
        name => 'nspluginwrapper',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nss-pam-ldapd':
        description => 'An nsswitch module which uses directory servers',
        ensure => '0.7.5-18.2.el6_4',
        name => 'nss-pam-ldapd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nss-softokn':
        description => 'Network Security Services Softoken Module',
        ensure => '3.14.3-9.el6',
        name => 'nss-softokn',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'nss-sysinit':
        description => 'System NSS Initialization',
        ensure => '3.15.3-3.el6_5',
        name => 'nss-sysinit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ntpdate':
        description => 'Utility to set the date and time via NTP',
        ensure => '4.2.6p5-1.el6.centos',
        name => 'ntpdate',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ntsysv':
        description => 'A tool to set the stop/start of system services in a runlevel',
        ensure => '1.3.49.3-2.el6_4.1',
        name => 'ntsysv',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'obexd':
        description => 'D-Bus service for Obex Client access',
        ensure => '0.19-2.el6',
        name => 'obexd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'oddjob':
        description => 'A D-Bus service which runs odd jobs on behalf of client applications',
        ensure => '0.30-5.el6',
        name => 'oddjob',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'openct':
        description => 'Middleware framework for smart card terminals',
        ensure => '0.6.19-4.el6',
        name => 'openct',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'openjpeg-libs':
        description => 'JPEG 2000 codec library',
        ensure => '1.3-10.el6_5',
        name => 'openjpeg-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'openssh-askpass':
        description => 'A passphrase dialog for OpenSSH and X',
        ensure => '5.3p1-94.el6',
        name => 'openssh-askpass',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'openssh-server':
        description => 'An open source SSH server daemon',
        ensure => '5.3p1-94.el6',
        name => 'openssh-server',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'openssl-devel':
        description => 'Files for development of applications which will use OpenSSL',
        ensure => '1.0.1e-16.el6_5.1',
        name => 'openssl-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'openswan':
        description => 'IPSEC implementation with IKEv1 and IKEv2 keying protocols',
        ensure => '2.6.32-27.el6',
        name => 'openswan',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'orca':
        description => 'Assistive technology for people with visual impairments',
        ensure => '2.28.2-1.el6',
        name => 'orca',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'oxygen-cursor-themes':
        description => 'Oxygen cursor themes',
        ensure => '4.3.4-24.el6',
        name => 'oxygen-cursor-themes',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pakchois':
        description => 'A wrapper library for PKCS#11',
        ensure => '0.4-3.2.el6',
        name => 'pakchois',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'paktype-tehreer-fonts':
        description => 'Tehreer Fonts for Arabic from PakType',
        ensure => '2.0-8.el6',
        name => 'paktype-tehreer-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pam_passwdqc':
        description => 'Pluggable password quality-control module',
        ensure => '1.0.5-6.el6',
        name => 'pam_passwdqc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'paps':
        description => 'Plain Text to PostScript converter',
        ensure => '0.6.8-13.el6.2',
        name => 'paps',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'passwd':
        description => 'An utility for setting or changing passwords using PAM',
        ensure => '0.77-4.el6_2.2',
        name => 'passwd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'patch':
        description => 'Utility for modifying/upgrading files',
        ensure => '2.6-6.el6',
        name => 'patch',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pax':
        description => 'POSIX File System Archiver',
        ensure => '3.4-10.1.el6',
        name => 'pax',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pcmciautils':
        description => 'PCMCIA utilities and initialization programs',
        ensure => '015-4.2.el6',
        name => 'pcmciautils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pcsc-lite':
        description => 'PC/SC Lite smart card framework and applications',
        ensure => '1.5.2-13.el6_4',
        name => 'pcsc-lite',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pcsc-lite-libs':
        description => 'PC/SC Lite libraries',
        ensure => '1.5.2-13.el6_4',
        name => 'pcsc-lite-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-CGI':
        description => 'Handle Common Gateway Interface requests and responses',
        ensure => '3.51-136.el6',
        name => 'perl-CGI',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-ExtUtils-MakeMaker':
        description => 'Create a module Makefile',
        ensure => '6.55-136.el6',
        name => 'perl-ExtUtils-MakeMaker',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-ExtUtils-ParseXS':
        description => 'Module and a script for converting Perl XS code into C code',
        ensure => '2.2003.0-136.el6',
        name => 'perl-ExtUtils-ParseXS',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-Module-Pluggable':
        description => 'Automatically give your module the ability to have plugins',
        ensure => '3.90-136.el6',
        name => 'perl-Module-Pluggable',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-Pod-Simple':
        description => 'Framework for parsing POD documentation',
        ensure => '3.13-136.el6',
        name => 'perl-Pod-Simple',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-Test-Simple':
        description => 'Basic utilities for writing tests',
        ensure => '0.92-136.el6',
        name => 'perl-Test-Simple',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'perl-version':
        description => 'Perl extension for Version Objects',
        ensure => '0.77-136.el6',
        name => 'perl-version',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'phonon-backend-gstreamer':
        description => 'Gstreamer phonon backend',
        ensure => '4.6.2-26.el6_4',
        name => 'phonon-backend-gstreamer',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-devel':
        description => 'Files needed for building PHP extensions',
        ensure => '5.3.3-27.el6_5',
        name => 'php-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-gd':
        description => 'A module for PHP applications for using the gd graphics library',
        ensure => '5.3.3-27.el6_5',
        name => 'php-gd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-mysql':
        description => 'A module for PHP applications that use MySQL databases',
        ensure => '5.3.3-27.el6_5',
        name => 'php-mysql',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-pecl-memcache':
        description => 'Extension to work with the Memcached caching daemon',
        ensure => '3.0.5-4.el6',
        name => 'php-pecl-memcache',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-pspell':
        description => 'A module for PHP applications for using pspell interfaces',
        ensure => '5.3.3-27.el6_5',
        name => 'php-pspell',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-snmp':
        description => 'A module for PHP applications that query SNMP-managed devices',
        ensure => '5.3.3-27.el6_5',
        name => 'php-snmp',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-xml':
        description => 'A module for PHP applications which use XML',
        ensure => '5.3.3-27.el6_5',
        name => 'php-xml',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'php-xmlrpc':
        description => 'A module for PHP applications which use the XML-RPC protocol',
        ensure => '5.3.3-27.el6_5',
        name => 'php-xmlrpc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pidgin':
        description => 'A Gtk+ based multiprotocol instant messaging client',
        ensure => '2.7.9-11.el6',
        name => 'pidgin',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pinentry-qt':
        description => 'Passphrase/PIN entry dialog based on Qt3',
        ensure => '0.7.6-6.el6',
        name => 'pinentry-qt',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pinfo':
        description => 'An info file viewer',
        ensure => '0.6.9-12.el6',
        name => 'pinfo',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'plymouth-plugin-two-step':
        description => 'Plymouth "two-step" plugin',
        ensure => '0.8.3-27.el6.centos',
        name => 'plymouth-plugin-two-step',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'plymouth-system-theme':
        description => 'Plymouth default theme',
        ensure => '0.8.3-27.el6.centos',
        name => 'plymouth-system-theme',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'plymouth-utils':
        description => 'Plymouth related utilities',
        ensure => '0.8.3-27.el6.centos',
        name => 'plymouth-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'policycoreutils-python':
        description => 'SELinux policy core python utilities',
        ensure => '2.0.83-19.39.el6',
        name => 'policycoreutils-python',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'polkit-desktop-policy':
        description => 'Roles and default policy for desktop usage',
        ensure => '0.96-5.el6_4',
        name => 'polkit-desktop-policy',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'poppler-data':
        description => 'Encoding files',
        ensure => '0.4.0-1.el6',
        name => 'poppler-data',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'prelink':
        description => 'An ELF prelinking utility',
        ensure => '0.4.6-3.1.el6_4',
        name => 'prelink',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'printer-filters':
        description => 'Collection of filters for various printer drivers',
        ensure => '1.1-4.1.el6',
        name => 'printer-filters',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'psacct':
        description => 'Utilities for monitoring process activities',
        ensure => '6.3.2-63.el6_3.3',
        name => 'psacct',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pulseaudio-module-bluetooth':
        description => 'Bluetooth support for the PulseAudio sound server',
        ensure => '0.9.21-14.el6_3',
        name => 'pulseaudio-module-bluetooth',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pulseaudio-module-gconf':
        description => 'GConf support for the PulseAudio sound server',
        ensure => '0.9.21-14.el6_3',
        name => 'pulseaudio-module-gconf',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pulseaudio-utils':
        description => 'PulseAudio sound server utilities',
        ensure => '0.9.21-14.el6_3',
        name => 'pulseaudio-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'puppet':
        description => 'A network tool for managing many disparate systems',
        ensure => '3.4.1-1.el6',
        name => 'puppet',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'Puppet Labs';
      'puppetlabs-release':
        description => 'Configuration for yum.puppetlabs.com',
        ensure => '6-7',
        name => 'puppetlabs-release',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']];
      'pyOpenSSL':
        description => 'Python wrapper module around the OpenSSL library',
        ensure => '0.10-2.el6',
        name => 'pyOpenSSL',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pycairo':
        description => 'Python bindings for the cairo library',
        ensure => '1.8.6-2.1.el6',
        name => 'pycairo',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pygpgme':
        description => 'Python module for working with OpenPGP messages',
        ensure => '0.1-18.20090824bzr68.el6',
        name => 'pygpgme',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pytalloc':
        description => 'Developer tools for the Talloc library',
        ensure => '2.0.7-2.el6',
        name => 'pytalloc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-crypto':
        description => 'Cryptography library for Python',
        ensure => '2.0.1-22.el6',
        name => 'python-crypto',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-deltarpm':
        description => 'Python bindings for deltarpm',
        ensure => '3.5-0.5.20090913git.el6',
        name => 'python-deltarpm',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-dmidecode':
        description => 'Python module to access DMI data',
        ensure => '3.10.13-3.el6_4',
        name => 'python-dmidecode',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-iniparse':
        description => 'Python Module for Accessing and Modifying Configuration Data in INI files',
        ensure => '0.3.1-2.1.el6',
        name => 'python-iniparse',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-kerberos':
        description => 'A high-level wrapper for Kerberos (GSSAPI) operations',
        ensure => '1.1-6.2.el6',
        name => 'python-kerberos',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-netaddr':
        description => 'Pythonic manipulation of IPv4, IPv6, CIDR, EUI and MAC network addresses',
        ensure => '0.7.5-4.el6',
        name => 'python-netaddr',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-nose':
        description => 'A discovery-based unittest extension for Python',
        ensure => '0.10.4-3.1.el6',
        name => 'python-nose',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'python-pip':
        description => 'A tool for installing and managing Python packages',
        ensure => '1.3.1-4.el6',
        name => 'python-pip',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'Fedora Project';
      'python-pycurl':
        description => 'A Python interface to libcurl',
        ensure => '7.19.0-8.el6',
        name => 'python-pycurl',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'pyxf86config':
        description => 'Python wrappers for libxf86config',
        ensure => '0.3.37-7.1.el6',
        name => 'pyxf86config',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ql2100-firmware':
        description => 'Firmware for qlogic 2100 devices',
        ensure => '1.19.38-3.1.el6',
        name => 'ql2100-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ql2200-firmware':
        description => 'Firmware for qlogic 2200 devices',
        ensure => '2.02.08-3.1.el6',
        name => 'ql2200-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ql23xx-firmware':
        description => 'Firmware for qlogic 23xx devices',
        ensure => '3.03.27-3.1.el6',
        name => 'ql23xx-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ql2400-firmware':
        description => 'Firmware for qlogic 2400 devices',
        ensure => '7.00.01-1.el6',
        name => 'ql2400-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ql2500-firmware':
        description => 'Firmware for qlogic 2500 devices',
        ensure => '7.00.01-1.el6',
        name => 'ql2500-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'qt-mysql':
        description => 'MySQL driver for Qt\'s SQL classes',
        ensure => '4.6.2-26.el6_4',
        name => 'qt-mysql',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'qt-sqlite':
        description => 'SQLite driver for Qt\'s SQL classes',
        ensure => '4.6.2-26.el6_4',
        name => 'qt-sqlite',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'quota':
        description => 'System administration tools for monitoring users\' disk usage',
        ensure => '3.17-20.el6',
        name => 'quota',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rarian':
        description => 'Documentation meta-data library',
        ensure => '0.8.1-5.1.el6',
        name => 'rarian',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rdate':
        description => 'Tool for getting the date/time from a remote machine',
        ensure => '1.4-16.el6',
        name => 'rdate',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'readahead':
        description => 'Read a preset list of files into memory',
        ensure => '1.5.6-2.el6',
        name => 'readahead',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'redhat-lsb':
        description => 'LSB base libraries support for CentOS',
        ensure => '4.0-7.el6.centos',
        name => 'redhat-lsb',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'redland':
        description => 'RDF Application Framework',
        ensure => '1.0.7-11.el6',
        name => 'redland',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rfkill':
        description => 'A tool for enabling and disabling wireless devices',
        ensure => '0.3-4.el6',
        name => 'rfkill',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rhino':
        description => 'JavaScript for Java',
        ensure => '1.7-0.7.r2.2.el6',
        name => 'rhino',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rhythmbox':
        description => 'Music Management Application',
        ensure => '0.12.8-1.el6',
        name => 'rhythmbox',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rng-tools':
        description => 'Random number generator related utilities',
        ensure => '2-13.el6_2',
        name => 'rng-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rootfiles':
        description => 'The basic required files for the root user\'s directory',
        ensure => '8.1-6.1.el6',
        name => 'rootfiles',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rpcbind':
        description => 'Universal Addresses to RPC Program Number Mapper',
        ensure => '0.2.0-11.el6',
        name => 'rpcbind',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rt61pci-firmware':
        description => 'Firmware for Ralink® RT2561/RT2661 A/B/G network adaptors',
        ensure => '1.2-7.el6',
        name => 'rt61pci-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rt73usb-firmware':
        description => 'Firmware for Ralink® RT2571W/RT2671 A/B/G network adaptors',
        ensure => '1.8-7.el6',
        name => 'rt73usb-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rtkit':
        description => 'Realtime Policy and Watchdog Daemon',
        ensure => '0.5-2.el6_4',
        name => 'rtkit',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'ruby-devel':
        description => 'A Ruby development environment',
        ensure => '1.8.7.352-13.el6',
        name => 'ruby-devel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'rubygems':
        description => 'The Ruby standard for packaging ruby libraries',
        ensure => '1.3.7-5.el6',
        name => 'rubygems',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sane-frontends':
        description => 'Graphical frontend to SANE',
        ensure => '1.0.14-9.2.el6',
        name => 'sane-frontends',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'scenery-backgrounds':
        description => 'Scenery desktop backgrounds',
        ensure => '6.0.0-1.el6',
        name => 'scenery-backgrounds',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'scl-utils':
        description => 'Utilities for alternative packaging',
        ensure => '20120927-8.el6',
        name => 'scl-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'seahorse':
        description => 'A GNOME application for managing encryption keys',
        ensure => '2.28.1-4.el6',
        name => 'seahorse',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'selinux-policy-targeted':
        description => 'SELinux targeted base policy',
        ensure => '3.7.19-231.el6',
        name => 'selinux-policy-targeted',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'setools-libs':
        description => 'Policy analysis support libraries for SELinux',
        ensure => '3.3.7-4.el6',
        name => 'setools-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'setserial':
        description => 'A utility for configuring serial ports',
        ensure => '2.17-25.el6',
        name => 'setserial',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sgpio':
        description => 'SGPIO captive backplane tool',
        ensure => '1.2.0.10-5.el6',
        name => 'sgpio',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sil-padauk-fonts':
        description => 'A font for Burmese and the Myanmar script',
        ensure => '2.6.1-1.el6',
        name => 'sil-padauk-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sinjdoc':
        description => 'Documentation generator for Java source code',
        ensure => '0.5-9.1.el6',
        name => 'sinjdoc',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'slang':
        description => 'The shared library for the S-Lang extension language',
        ensure => '2.2.1-1.el6',
        name => 'slang',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'smartmontools':
        description => 'Tools for monitoring SMART capable hard disks',
        ensure => '5.43-1.el6',
        name => 'smartmontools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'smc-meera-fonts':
        description => 'Open Type Fonts for Malayalam script',
        ensure => '04.2-11.el6',
        name => 'smc-meera-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sound-juicer':
        description => 'Clean and lean CD ripper',
        ensure => '2.28.1-6.el6',
        name => 'sound-juicer',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'spice-vdagent':
        description => 'Agent for Spice guests',
        ensure => '0.14.0-2.el6',
        name => 'spice-vdagent',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sssd-client':
        description => 'SSSD Client libraries for NSS and PAM',
        ensure => '1.9.2-129.el6',
        name => 'sssd-client',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'strace':
        description => 'Tracks and displays system calls associated with a running process',
        ensure => '4.5.19-1.17.el6',
        name => 'strace',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'strigi-libs':
        description => 'Strigi libraries',
        ensure => '0.7.0-2.el6',
        name => 'strigi-libs',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'stunnel':
        description => 'An SSL-encrypting socket wrapper',
        ensure => '4.29-3.el6_4',
        name => 'stunnel',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sudo':
        description => 'Allows restricted root access for specified users',
        ensure => '1.8.6p3-12.el6',
        name => 'sudo',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sysstat':
        description => 'The sar and iostat system monitoring commands',
        ensure => '9.0.4-22.el6',
        name => 'sysstat',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-date-docs':
        description => 'Documentation for setting the system date and time',
        ensure => '1.0.11-1.el6',
        name => 'system-config-date-docs',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-firewall':
        description => 'A graphical interface for basic firewall setup',
        ensure => '1.2.27-5.el6',
        name => 'system-config-firewall',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-kdump':
        description => 'A graphical interface for configuring kernel crash dumping',
        ensure => '2.0.5-15.el6',
        name => 'system-config-kdump',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-keyboard-base':
        description => 'system-config-keyboard base components',
        ensure => '1.3.1-5.el6',
        name => 'system-config-keyboard-base',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-network-tui':
        description => 'The Network Adminstration Tool',
        ensure => '1.6.0.el6.2-1.el6',
        name => 'system-config-network-tui',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-services':
        description => 'Utility to start and stop system services',
        ensure => '0.99.45-1.el6.3',
        name => 'system-config-services',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-config-users-docs':
        description => 'Documentation for administering users and groups',
        ensure => '1.0.8-2.el6',
        name => 'system-config-users-docs',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-gnome-theme':
        description => 'System GNOME theme',
        ensure => '60.0.2-1.el6',
        name => 'system-gnome-theme',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'system-setup-keyboard':
        description => 'Hal keyboard layout callout',
        ensure => '0.7-4.el6',
        name => 'system-setup-keyboard',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'systemtap-runtime':
        description => 'Programmable system-wide instrumentation system - runtime',
        ensure => '2.3-4.el6_5',
        name => 'systemtap-runtime',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'sysvinit-tools':
        description => 'Tools used for process and utmp management.',
        ensure => '2.87-5.dsf.el6',
        name => 'sysvinit-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'tcpdump':
        description => 'A network traffic monitoring tool',
        ensure => '4.0.0-3.20090921gitdf3cb4.2.el6',
        name => 'tcpdump',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'tcsh':
        description => 'An enhanced version of csh, the C shell',
        ensure => '6.17-24.el6',
        name => 'tcsh',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'terminator':
        description => 'Store and run multiple GNOME terminals in one window',
        ensure => '0.95-2.el6',
        name => 'terminator',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => 'Fedora Project';
      'thai-scalable-fonts-common':
        description => 'Common files of <NAME>',
        ensure => '0.4.12-2.1.el6',
        name => 'thai-scalable-fonts-common',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'thunderbird':
        description => 'Mozilla Thunderbird mail/newsgroup client',
        ensure => '24.2.0-1.el6.centos',
        name => 'thunderbird',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'time':
        description => 'A GNU utility for monitoring a program\'s use of system resources',
        ensure => '1.7-37.1.el6',
        name => 'time',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'totem-mozplugin':
        description => 'Mozilla plugin for Totem',
        ensure => '2.28.6-4.el6',
        name => 'totem-mozplugin',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'totem-nautilus':
        description => 'Video and Audio Properties tab for Nautilus',
        ensure => '2.28.6-4.el6',
        name => 'totem-nautilus',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'trace-cmd':
        description => 'trace-cmd is a user interface to Ftrace',
        ensure => '1.0.5-10.el6',
        name => 'trace-cmd',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'traceroute':
        description => 'Traces the route taken by packets over an IPv4/IPv6 network',
        ensure => '2.0.14-2.el6',
        name => 'traceroute',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'tzdata':
        description => 'Timezone data',
        ensure => '2013i-1.el6',
        name => 'tzdata',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'tzdata-java':
        description => 'Timezone data for Java',
        ensure => '2013i-1.el6',
        name => 'tzdata-java',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'udisks':
        description => 'Storage Management Service',
        ensure => '1.0.1-4.el6',
        name => 'udisks',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'un-core-fonts-common':
        description => 'Common files of Un Core fonts',
        ensure => '1.0.2-0.15.080608.el6',
        name => 'un-core-fonts-common',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'unicap':
        description => 'Library to access different kinds of (video) capture devices',
        ensure => '0.9.5-7.el6',
        name => 'unicap',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'unzip':
        description => 'A utility for unpacking zip files',
        ensure => '6.0-1.el6',
        name => 'unzip',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'urw-fonts':
        description => 'Free versions of the 35 standard PostScript fonts',
        ensure => '2.4-10.el6',
        name => 'urw-fonts',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'usbutils':
        description => 'Linux USB utilities',
        ensure => '003-4.el6',
        name => 'usbutils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'valgrind':
        description => 'Tool for finding memory management bugs in programs',
        ensure => '3.8.1-3.2.el6',
        name => 'valgrind',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'vconfig':
        description => 'Linux 802.1q VLAN configuration utility',
        ensure => '1.9-8.1.el6',
        name => 'vconfig',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'vim-enhanced':
        description => 'A version of the VIM editor which includes recent enhancements',
        ensure => '7.2.411-1.8.el6',
        name => 'vim-enhanced',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'vino':
        description => 'A remote desktop system for GNOME',
        ensure => '2.28.1-9.el6_4',
        name => 'vino',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'vlgothic-fonts-common':
        description => 'Common files for VLGothic Japanese TrueType fonts',
        ensure => '20091202-2.el6',
        name => 'vlgothic-fonts-common',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'vorbis-tools':
        description => 'The Vorbis General Audio Compression Codec tools',
        ensure => '1.2.0-7.el6',
        name => 'vorbis-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'wacomexpresskeys':
        description => 'Wacom ExpressKeys and Touch Strips configuration utility',
        ensure => '0.4.2-3.el6',
        name => 'wacomexpresskeys',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'wavpack':
        description => 'A completely open audiocodec',
        ensure => '4.60-1.1.el6',
        name => 'wavpack',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'wdaemon':
        description => 'Hotplug helper for Wacom X.org driver',
        ensure => '0.17-5.el6',
        name => 'wdaemon',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'wireshark':
        description => 'Network traffic analyzer',
        ensure => '1.8.10-4.el6',
        name => 'wireshark',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'words':
        description => 'A dictionary of English words for the /usr/share/dict directory',
        ensure => '3.0-17.el6',
        name => 'words',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xcb-util':
        description => 'Convenience libraries sitting on top of libxcb',
        ensure => '0.3.6-1.el6',
        name => 'xcb-util',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xchat':
        description => 'A popular and easy to use graphical IRC (chat) client',
        ensure => '2.8.8-1.el6',
        name => 'xchat',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xdg-user-dirs-gtk':
        description => 'Gnome integration of special directories',
        ensure => '0.8-7.el6',
        name => 'xdg-user-dirs-gtk',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-apps':
        description => 'X.Org X11 applications',
        ensure => '7.6-6.el6',
        name => 'xorg-x11-apps',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-drivers':
        description => 'X.Org X11 driver installation package',
        ensure => '7.3-13.4.el6',
        name => 'xorg-x11-drivers',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-drv-ati-firmware':
        description => 'ATI firmware for R600/700/Evergreen/NI/PALM',
        ensure => '7.1.0-3.el6',
        name => 'xorg-x11-drv-ati-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-fonts-100dpi':
        description => 'A set of 100dpi resolution fonts for the X Window System.',
        ensure => '7.2-9.1.el6',
        name => 'xorg-x11-fonts-100dpi',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-fonts-ISO8859-1-100dpi':
        description => 'A set of 100dpi ISO-8859-1 fonts for X.',
        ensure => '7.2-9.1.el6',
        name => 'xorg-x11-fonts-ISO8859-1-100dpi',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-fonts-Type1':
        description => 'Type1 fonts provided by the X Window System',
        ensure => '7.2-9.1.el6',
        name => 'xorg-x11-fonts-Type1',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-fonts-misc':
        description => 'misc bitmap fonts for the X Window System',
        ensure => '7.2-9.1.el6',
        name => 'xorg-x11-fonts-misc',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-glamor':
        description => 'X.org glamor library',
        ensure => '0.5.0-6.20130401git81aadb8.el6',
        name => 'xorg-x11-glamor',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-server-common':
        description => 'Xorg server common files',
        ensure => '1.13.0-23.1.el6.centos',
        name => 'xorg-x11-server-common',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-utils':
        description => 'X.Org X11 X client utilities',
        ensure => '7.5-6.el6',
        name => 'xorg-x11-utils',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xorg-x11-xauth':
        description => 'X.Org X11 X authority utilities',
        ensure => '1.0.2-7.1.el6',
        name => 'xorg-x11-xauth',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xsane':
        description => 'X Window System front-end for the SANE scanner interface',
        ensure => '0.997-8.el6',
        name => 'xsane',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xsane-gimp':
        description => 'GIMP plug-in providing the SANE scanner interface',
        ensure => '0.997-8.el6',
        name => 'xsane-gimp',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xsettings-kde':
        description => 'XSettings Daemon for KDE',
        ensure => '0.11-1.el6',
        name => 'xsettings-kde',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xulrunner':
        description => 'XUL Runtime for Gecko Applications',
        ensure => '17.0.10-1.el6.centos',
        name => 'xulrunner',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'xvattr':
        description => 'Utility for getting and setting Xv attributes',
        ensure => '1.3-18.el6',
        name => 'xvattr',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'yp-tools':
        description => 'NIS (or YP) client programs',
        ensure => '2.9-12.el6',
        name => 'yp-tools',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'yum-metadata-parser':
        description => 'A fast metadata parser for yum',
        ensure => '1.1.2-16.el6',
        name => 'yum-metadata-parser',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'yum-plugin-fastestmirror':
        description => 'Yum plugin which chooses fastest repository from a mirrorlist',
        ensure => '1.1.30-14.el6',
        name => 'yum-plugin-fastestmirror',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'yum-plugin-security':
        description => 'Yum plugin to enable security filters',
        ensure => '1.1.30-14.el6',
        name => 'yum-plugin-security',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'zd1211-firmware':
        description => 'Firmware for wireless devices based on zd1211 chipset',
        ensure => '1.4-4.el6',
        name => 'zd1211-firmware',
        platform => noarch,
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
      'zip':
        description => 'A file compression and packaging utility compatible with PKZIP',
        ensure => '3.0-1.el6',
        name => 'zip',
        platform => 'x86_64',
        provider => yum,
        require => [Class['hosts'], file['/etc/yum.repos.d/elrepo.repo'], file['/etc/yum.repos.d/CentOS-Debuginfo.repo'], file['/etc/yum.repos.d/CentOS-Vault.repo'], file['/etc/yum.repos.d/CentOS-Base.repo'], file['/etc/yum.repos.d/CentOS-CR.repo'], file['/etc/yum.repos.d/puppetlabs.repo'], file['/etc/yum.repos.d/CentOS-Media.repo'], file['/etc/yum.repos.d/nginx.repo'], file['/etc/yum.repos.d/epel-testing.repo'], file['/etc/yum.repos.d/epel.repo'], Exec['/usr/sbin/yum-complete-transaction']],
        vendor => CentOS;
    }
  }
  include yum
}
include packages
