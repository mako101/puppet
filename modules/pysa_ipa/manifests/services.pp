class services {
  service {
    'NetworkManager':
      name => 'NetworkManager',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'abrt-ccpp':
      name => 'abrt-ccpp',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'abrt-oops':
      name => 'abrt-oops',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'abrtd':
      name => 'abrtd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'acpid':
      name => 'acpid',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'atd':
      name => 'atd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'auditd':
      name => 'auditd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'autofs':
      name => 'autofs',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'blk-availability':
      name => 'blk-availability',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'bluetooth':
      name => 'bluetooth',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'certmonger':
      name => 'certmonger',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'cgconfig':
      name => 'cgconfig',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'cgred':
      name => 'cgred',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'control-alt-delete':
      name => 'control-alt-delete',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'cpuspeed':
      name => 'cpuspeed',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'crond':
      name => 'crond',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'cups':
      name => 'cups',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'dnsmasq':
      name => 'dnsmasq',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'drbd':
      name => 'drbd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'fcoe':
      name => 'fcoe',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'firstboot':
      name => 'firstboot',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'functions':
      name => 'functions',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'haldaemon':
      name => 'haldaemon',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'halt':
      name => 'halt',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'haproxy':
      name => 'haproxy',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'hsqldb':
      name => 'hsqldb',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'htcacheclean':
      name => 'htcacheclean',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'httpd':
      name => 'httpd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'init-system-dbus':
      name => 'init-system-dbus',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'ip6tables':
      name => 'ip6tables',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'ipsec':
      name => 'ipsec',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'iptables':
      name => 'iptables',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'irqbalance':
      name => 'irqbalance',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'iscsi':
      name => 'iscsi',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'iscsid':
      name => 'iscsid',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'kdump':
      name => 'kdump',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'kexec-disable':
      name => 'kexec-disable',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'killall':
      name => 'killall',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'livesys':
      name => 'livesys',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'livesys-late':
      name => 'livesys-late',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'lldpad':
      name => 'lldpad',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'lvm2-lvmetad':
      name => 'lvm2-lvmetad',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'lvm2-monitor':
      name => 'lvm2-monitor',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'mdmonitor':
      name => 'mdmonitor',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'messagebus':
      name => 'messagebus',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'multipathd':
      name => 'multipathd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'mysqld':
      name => 'mysqld',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'netconsole':
      name => 'netconsole',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'netfs':
      name => 'netfs',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'network':
      name => 'network',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'nfs':
      name => 'nfs',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'nfslock':
      name => 'nfslock',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'nscd':
      name => 'nscd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'nslcd':
      name => 'nslcd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'ntpd':
      name => 'ntpd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'ntpdate':
      name => 'ntpdate',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'nxserver':
      name => 'nxserver',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'oddjobd':
      name => 'oddjobd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'openct':
      name => 'openct',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'pcscd':
      name => 'pcscd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'plymouth-shutdown':
      name => 'plymouth-shutdown',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'portreserve':
      name => 'portreserve',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'postfix':
      name => 'postfix',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'prefdm':
      name => 'prefdm',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'psacct':
      name => 'psacct',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'puppet':
      name => 'puppet',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'quit-plymouth':
      name => 'quit-plymouth',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'quota_nld':
      name => 'quota_nld',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rc':
      name => 'rc',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'rcS':
      name => 'rcS',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'rcS-emergency':
      name => 'rcS-emergency',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'rcS-sulogin':
      name => 'rcS-sulogin',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'rdisc':
      name => 'rdisc',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'readahead':
      name => 'readahead',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'readahead-collector':
      name => 'readahead-collector',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'readahead-disable-services':
      name => 'readahead-disable-services',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'restorecond':
      name => 'restorecond',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rngd':
      name => 'rngd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rpcbind':
      name => 'rpcbind',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rpcgssd':
      name => 'rpcgssd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rpcidmapd':
      name => 'rpcidmapd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rpcsvcgssd':
      name => 'rpcsvcgssd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'rsyslog':
      name => 'rsyslog',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'sandbox':
      name => 'sandbox',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'saslauthd':
      name => 'saslauthd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'serial':
      name => 'serial',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'single':
      name => 'single',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'smartd':
      name => 'smartd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'snmpd':
      name => 'snmpd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'snmptrapd':
      name => 'snmptrapd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'spice-vdagentd':
      name => 'spice-vdagentd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'splash-manager':
      name => 'splash-manager',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'sshd':
      name => 'sshd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'sssd':
      name => 'sssd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'start-ttys':
      name => 'start-ttys',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'stinit':
      name => 'stinit',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'sysstat':
      name => 'sysstat',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'tty':
      name => 'tty',
      path => '/etc/init',
      provider => upstart,
      require => Class['files'];
    'udev-post':
      name => 'udev-post',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'vboxadd':
      name => 'vboxadd',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'vboxadd-service':
      name => 'vboxadd-service',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'vboxadd-x11':
      name => 'vboxadd-x11',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'vncserver':
      name => 'vncserver',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'wdaemon':
      name => 'wdaemon',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'wpa_supplicant':
      name => 'wpa_supplicant',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
    'ypbind':
      name => 'ypbind',
      path => '/etc/rc.d/init.d',
      provider => init,
      require => Class['files'];
  }
}
include services
