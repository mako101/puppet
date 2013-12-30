class groups {
	group {
		'abrt':
			ensure => present,
			name => 'abrt',
			require => Class['hosts'];
		'adm':
			ensure => present,
			name => 'adm',
			require => Class['hosts'];
		'apache':
			ensure => present,
			name => 'apache',
			require => Class['hosts'];
		'audio':
			ensure => present,
			name => 'audio',
			require => Class['hosts'];
		'avahi-autoipd':
			ensure => present,
			name => 'avahi-autoipd',
			require => Class['hosts'];
		'bareos':
			ensure => present,
			name => 'bareos',
			require => Class['hosts'];
		'bin':
			ensure => present,
			name => 'bin',
			require => Class['hosts'];
		'cdrom':
			ensure => present,
			name => 'cdrom',
			require => Class['hosts'];
		'cgred':
			ensure => present,
			name => 'cgred',
			require => Class['hosts'];
		'ctapiusers':
			ensure => present,
			name => 'ctapiusers',
			require => Class['hosts'];
		'daemon':
			ensure => present,
			name => 'daemon',
			require => Class['hosts'];
		'dbus':
			ensure => present,
			name => 'dbus',
			require => Class['hosts'];
		'desktop_admin_r':
			ensure => present,
			name => 'desktop_admin_r',
			require => Class['hosts'];
		'desktop_user_r':
			ensure => present,
			name => 'desktop_user_r',
			require => Class['hosts'];
		'dialout':
			ensure => present,
			name => 'dialout',
			require => Class['hosts'];
		'dip':
			ensure => present,
			name => 'dip',
			require => Class['hosts'];
		'disk':
			ensure => present,
			name => 'disk',
			require => Class['hosts'];
		'floppy':
			ensure => present,
			name => 'floppy',
			require => Class['hosts'];
		'ftp':
			ensure => present,
			name => 'ftp',
			require => Class['hosts'];
		'fuse':
			ensure => present,
			name => 'fuse',
			require => Class['hosts'];
		'games':
			ensure => present,
			name => 'games',
			require => Class['hosts'];
		'gdm':
			ensure => present,
			name => 'gdm',
			require => Class['hosts'];
		'git':
			ensure => present,
			name => 'git',
			require => Class['hosts'];
		'gopher':
			ensure => present,
			name => 'gopher',
			require => Class['hosts'];
		'haldaemon':
			ensure => present,
			name => 'haldaemon',
			require => Class['hosts'];
		'haproxy':
			ensure => present,
			name => 'haproxy',
			require => Class['hosts'];
		'hsqldb':
			ensure => present,
			name => 'hsqldb',
			require => Class['hosts'];
		'kmem':
			ensure => present,
			name => 'kmem',
			require => Class['hosts'];
		'ldap':
			ensure => present,
			name => 'ldap',
			require => Class['hosts'];
		'lock':
			ensure => present,
			name => 'lock',
			require => Class['hosts'];
		'lp':
			ensure => present,
			name => 'lp',
			require => Class['hosts'];
		'mail':
			ensure => present,
			name => 'mail',
			require => Class['hosts'];
		'man':
			ensure => present,
			name => 'man',
			require => Class['hosts'];
		'mem':
			ensure => present,
			name => 'mem',
			require => Class['hosts'];
		'mysql':
			ensure => present,
			name => 'mysql',
			require => Class['hosts'];
		'nfsnobody':
			ensure => present,
			name => 'nfsnobody',
			require => Class['hosts'];
		'nobody':
			ensure => present,
			name => 'nobody',
			require => Class['hosts'];
		'nscd':
			ensure => present,
			name => 'nscd',
			require => Class['hosts'];
		'ntp':
			ensure => present,
			name => 'ntp',
			require => Class['hosts'];
		'nx':
			ensure => present,
			name => 'nx',
			require => Class['hosts'];
		'postdrop':
			ensure => present,
			name => 'postdrop',
			require => Class['hosts'];
		'postfix':
			ensure => present,
			name => 'postfix',
			require => Class['hosts'];
		'pulse':
			ensure => present,
			name => 'pulse',
			require => Class['hosts'];
		'pulse-access':
			ensure => present,
			name => 'pulse-access',
			require => Class['hosts'];
		'puppet':
			ensure => present,
			name => 'puppet',
			require => Class['hosts'];
		'root':
			ensure => present,
			name => 'root',
			require => Class['hosts'];
		'rpc':
			ensure => present,
			name => 'rpc',
			require => Class['hosts'];
		'rpcuser':
			ensure => present,
			name => 'rpcuser',
			require => Class['hosts'];
		'rtkit':
			ensure => present,
			name => 'rtkit',
			require => Class['hosts'];
		'saslauth':
			ensure => present,
			name => 'saslauth',
			require => Class['hosts'];
		'slocate':
			ensure => present,
			name => 'slocate',
			require => Class['hosts'];
		'sshd':
			ensure => present,
			name => 'sshd',
			require => Class['hosts'];
		'stapdev':
			ensure => present,
			name => 'stapdev',
			require => Class['hosts'];
		'stapsys':
			ensure => present,
			name => 'stapsys',
			require => Class['hosts'];
		'stapusr':
			ensure => present,
			name => 'stapusr',
			require => Class['hosts'];
		'sys':
			ensure => present,
			name => 'sys',
			require => Class['hosts'];
		'tape':
			ensure => present,
			name => 'tape',
			require => Class['hosts'];
		'tcpdump':
			ensure => present,
			name => 'tcpdump',
			require => Class['hosts'];
		'tty':
			ensure => present,
			name => 'tty',
			require => Class['hosts'];
		'usbmuxd':
			ensure => present,
			name => 'usbmuxd',
			require => Class['hosts'];
		'users':
			ensure => present,
			name => 'users',
			require => Class['hosts'];
		'utempter':
			ensure => present,
			name => 'utempter',
			require => Class['hosts'];
		'utmp':
			ensure => present,
			name => 'utmp',
			require => Class['hosts'];
		'uucp':
			ensure => present,
			name => 'uucp',
			require => Class['hosts'];
		'vboxsf':
			ensure => present,
			name => 'vboxsf',
			require => Class['hosts'];
		'vcsa':
			ensure => present,
			name => 'vcsa',
			require => Class['hosts'];
		'video':
			ensure => present,
			name => 'video',
			require => Class['hosts'];
		'viktor':
			ensure => present,
			name => 'viktor',
			require => Class['hosts'];
		'wbpriv':
			ensure => present,
			name => 'wbpriv',
			require => Class['hosts'];
		'wheel':
			ensure => present,
			name => 'wheel',
			require => Class['hosts'];
		'wireshark':
			ensure => present,
			name => 'wireshark',
			require => Class['hosts'];
	}
}
include groups
