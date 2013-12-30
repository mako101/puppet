class users {
	user {
		'abrt':
			gid => abrt,
			home => '/etc/abrt',
			name => 'abrt',
			require => [group['abrt'], Class['hosts']],
			shell => '/sbin/nologin';
		'adm':
			gid => adm,
			groups => 'sys',
			home => '/var/adm',
			name => 'adm',
			require => [group['adm'], Class['hosts']],
			shell => '/sbin/nologin';
		'apache':
			gid => apache,
			home => '/var/www',
			name => 'apache',
			require => [group['apache'], Class['hosts']],
			shell => '/sbin/nologin';
		'avahi-autoipd':
			gid => 'avahi-autoipd',
			home => '/var/lib/avahi-autoipd',
			name => 'avahi-autoipd',
			require => [group['avahi-autoipd'], Class['hosts']],
			shell => '/sbin/nologin';
		'bareos':
			gid => bareos,
			groups => ['disk', 'tape'],
			home => '/var/lib/bareos',
			name => 'bareos',
			require => [group['bareos'], Class['hosts']],
			shell => '/bin/false';
		'bin':
			gid => bin,
			groups => ['daemon', 'sys'],
			home => '/bin',
			name => 'bin',
			require => [group['bin'], Class['hosts']],
			shell => '/sbin/nologin';
		'daemon':
			gid => daemon,
			groups => ['bin', 'adm', 'lp'],
			home => '/sbin',
			name => 'daemon',
			require => [group['daemon'], Class['hosts']],
			shell => '/sbin/nologin';
		'dbus':
			gid => dbus,
			home => '/',
			name => 'dbus',
			require => [group['dbus'], Class['hosts']],
			shell => '/sbin/nologin';
		'ftp':
			gid => ftp,
			home => '/var/ftp',
			name => 'ftp',
			require => [group['ftp'], Class['hosts']],
			shell => '/sbin/nologin';
		'games':
			gid => users,
			home => '/usr/games',
			name => 'games',
			require => [group['users'], Class['hosts']],
			shell => '/sbin/nologin';
		'gdm':
			gid => gdm,
			home => '/var/lib/gdm',
			name => 'gdm',
			require => [group['gdm'], Class['hosts']],
			shell => '/sbin/nologin';
		'git':
			gid => git,
			home => '/home/git',
			name => 'git',
			require => [group['git'], Class['hosts']],
			shell => '/bin/bash';
		'gopher':
			gid => gopher,
			home => '/var/gopher',
			name => 'gopher',
			require => [group['gopher'], Class['hosts']],
			shell => '/sbin/nologin';
		'haldaemon':
			gid => haldaemon,
			home => '/',
			name => 'haldaemon',
			require => [group['haldaemon'], Class['hosts']],
			shell => '/sbin/nologin';
		'halt':
			gid => root,
			home => '/sbin',
			name => 'halt',
			require => [group['root'], Class['hosts']],
			shell => '/sbin/halt';
		'haproxy':
			gid => haproxy,
			home => '/var/lib/haproxy',
			name => 'haproxy',
			require => [group['haproxy'], Class['hosts']],
			shell => '/sbin/nologin';
		'hsqldb':
			gid => hsqldb,
			home => '/var/lib/hsqldb',
			name => 'hsqldb',
			require => [group['hsqldb'], Class['hosts']],
			shell => '/sbin/nologin';
		'lp':
			gid => lp,
			home => '/var/spool/lpd',
			name => 'lp',
			require => [group['lp'], Class['hosts']],
			shell => '/sbin/nologin';
		'mail':
			gid => mail,
			home => '/var/spool/mail',
			name => 'mail',
			require => [group['mail'], Class['hosts']],
			shell => '/sbin/nologin';
		'mysql':
			gid => mysql,
			home => '/var/lib/mysql',
			name => 'mysql',
			require => [group['mysql'], Class['hosts']],
			shell => '/bin/bash';
		'nfsnobody':
			gid => nfsnobody,
			home => '/var/lib/nfs',
			name => 'nfsnobody',
			require => [group['nfsnobody'], Class['hosts']],
			shell => '/sbin/nologin';
		'nobody':
			gid => nobody,
			home => '/',
			name => 'nobody',
			require => [group['nobody'], Class['hosts']],
			shell => '/sbin/nologin';
		'nscd':
			gid => nscd,
			home => '/',
			name => 'nscd',
			require => [group['nscd'], Class['hosts']],
			shell => '/sbin/nologin';
		'nslcd':
			gid => ldap,
			home => '/',
			name => 'nslcd',
			require => [group['ldap'], Class['hosts']],
			shell => '/sbin/nologin';
		'ntp':
			gid => ntp,
			home => '/etc/ntp',
			name => 'ntp',
			require => [group['ntp'], Class['hosts']],
			shell => '/sbin/nologin';
		'nx':
			gid => nx,
			home => '/var/NX/nx',
			name => 'nx',
			require => [group['nx'], Class['hosts']],
			shell => '/etc/NX/nxserver';
		'operator':
			gid => root,
			home => '/root',
			name => 'operator',
			require => [group['root'], Class['hosts']],
			shell => '/sbin/nologin';
		'postfix':
			gid => postfix,
			groups => 'mail',
			home => '/var/spool/postfix',
			name => 'postfix',
			require => [group['postfix'], Class['hosts']],
			shell => '/sbin/nologin';
		'pulse':
			gid => pulse,
			home => '/var/run/pulse',
			name => 'pulse',
			require => [group['pulse'], Class['hosts']],
			shell => '/sbin/nologin';
		'puppet':
			gid => puppet,
			home => '/var/lib/puppet',
			name => 'puppet',
			require => [group['puppet'], Class['hosts']],
			shell => '/sbin/nologin';
		'root':
			gid => root,
			home => '/root',
			name => 'root',
			require => [group['root'], Class['hosts']],
			shell => '/bin/bash';
		'rpc':
			gid => rpc,
			home => '/var/cache/rpcbind',
			name => 'rpc',
			require => [group['rpc'], Class['hosts']],
			shell => '/sbin/nologin';
		'rpcuser':
			gid => rpcuser,
			home => '/var/lib/nfs',
			name => 'rpcuser',
			require => [group['rpcuser'], Class['hosts']],
			shell => '/sbin/nologin';
		'rtkit':
			gid => rtkit,
			home => '/proc',
			name => 'rtkit',
			require => [group['rtkit'], Class['hosts']],
			shell => '/sbin/nologin';
		'saslauth':
			gid => saslauth,
			home => '/var/empty/saslauth',
			name => 'saslauth',
			require => [group['saslauth'], Class['hosts']],
			shell => '/sbin/nologin';
		'shutdown':
			gid => root,
			home => '/sbin',
			name => 'shutdown',
			require => [group['root'], Class['hosts']],
			shell => '/sbin/shutdown';
		'sshd':
			gid => sshd,
			home => '/var/empty/sshd',
			name => 'sshd',
			require => [group['sshd'], Class['hosts']],
			shell => '/sbin/nologin';
		'sync':
			gid => root,
			home => '/sbin',
			name => 'sync',
			require => [group['root'], Class['hosts']],
			shell => '/bin/sync';
		'tcpdump':
			gid => tcpdump,
			home => '/',
			name => 'tcpdump',
			require => [group['tcpdump'], Class['hosts']],
			shell => '/sbin/nologin';
		'usbmuxd':
			gid => usbmuxd,
			home => '/',
			name => 'usbmuxd',
			require => [group['usbmuxd'], Class['hosts']],
			shell => '/sbin/nologin';
		'uucp':
			gid => uucp,
			home => '/var/spool/uucp',
			name => 'uucp',
			require => [group['uucp'], Class['hosts']],
			shell => '/sbin/nologin';
		'vboxadd':
			gid => bin,
			home => '/var/run/vboxadd',
			name => 'vboxadd',
			require => [group['bin'], Class['hosts']],
			shell => '/bin/false';
		'vcsa':
			gid => vcsa,
			home => '/dev',
			name => 'vcsa',
			require => [group['vcsa'], Class['hosts']],
			shell => '/sbin/nologin';
		'viktor':
			gid => viktor,
			home => '/home/viktor',
			name => 'viktor',
			require => [group['viktor'], Class['hosts']],
			shell => '/bin/bash';
	}
}
include users
