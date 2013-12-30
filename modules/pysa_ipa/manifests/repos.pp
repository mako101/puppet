class repos {
	file {
		'/etc/yum.repos.d/CentOS-Base.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/CentOS-Base.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/CentOS-Base.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/CentOS-CR.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/CentOS-CR.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/CentOS-CR.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/CentOS-Debuginfo.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/CentOS-Debuginfo.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/CentOS-Debuginfo.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/CentOS-Media.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/CentOS-Media.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/CentOS-Media.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/CentOS-Vault.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/CentOS-Vault.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/CentOS-Vault.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/elrepo.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/elrepo.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/elrepo.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/epel-testing.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/epel-testing.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/epel-testing.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/epel.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/epel.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/epel.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/nginx.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/nginx.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/nginx.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
		'/etc/yum.repos.d/puppetlabs.repo':
			checksum => 'md5',
			content => template('pysa_ipa/etc/yum.repos.d/puppetlabs.repo'),
			group => 'root',
			mode => '0644',
			owner => 'root',
			path => '/etc/yum.repos.d/puppetlabs.repo',
			require => [group['root'], Class['hosts'], file['-/etc/yum.repos.d'], user['root']];
	}
}
include repos
