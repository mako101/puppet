class files {
  file {
    '/etc/.pwd.lock':
      checksum => 'md5',
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/.pwd.lock',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ConsoleKit/seats.d/00-primary.seat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ConsoleKit/seats.d/00-primary.seat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ConsoleKit/seats.d/00-primary.seat',
      require => [group['root'], Class['hosts'], file['-/etc/ConsoleKit/seats.d'], user['root']];
    '/etc/DIR_COLORS':
      checksum => 'md5',
      content => template('pysa_ipa/etc/DIR_COLORS'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/DIR_COLORS',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/DIR_COLORS.256color':
      checksum => 'md5',
      content => template('pysa_ipa/etc/DIR_COLORS.256color'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/DIR_COLORS.256color',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/DIR_COLORS.lightbgcolor':
      checksum => 'md5',
      content => template('pysa_ipa/etc/DIR_COLORS.lightbgcolor'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/DIR_COLORS.lightbgcolor',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/NX/nxnode':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NX/nxnode'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/NX/nxnode',
      require => [group['root'], Class['hosts'], file['-/etc/NX'], user['root']];
    '/etc/NX/nxserver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NX/nxserver'),
      group => 'nx',
      mode => '0555',
      owner => 'nx',
      path => '/etc/NX/nxserver',
      require => [group['nx'], Class['hosts'], file['-/etc/NX'], user['nx']];
    '/etc/NX/server/localhost/client.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NX/server/localhost/client.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/NX/server/localhost/client.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/NX/server/localhost'], user['root']];
    '/etc/NX/server/localhost/node.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NX/server/localhost/node.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/NX/server/localhost/node.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/NX/server/localhost'], user['root']];
    '/etc/NX/server/localhost/player.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NX/server/localhost/player.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/NX/server/localhost/player.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/NX/server/localhost'], user['root']];
    '/etc/NX/server/localhost/server.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NX/server/localhost/server.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/NX/server/localhost/server.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/NX/server/localhost'], user['root']];
    '/etc/NetworkManager/NetworkManager.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NetworkManager/NetworkManager.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/NetworkManager/NetworkManager.conf',
      require => [group['root'], Class['hosts'], file['-/etc/NetworkManager'], user['root']];
    '/etc/NetworkManager/dispatcher.d/00-netreport':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NetworkManager/dispatcher.d/00-netreport'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/NetworkManager/dispatcher.d/00-netreport',
      require => [group['root'], Class['hosts'], file['-/etc/NetworkManager/dispatcher.d'], user['root']];
    '/etc/NetworkManager/dispatcher.d/04-iscsi':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NetworkManager/dispatcher.d/04-iscsi'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/NetworkManager/dispatcher.d/04-iscsi',
      require => [group['root'], Class['hosts'], file['-/etc/NetworkManager/dispatcher.d'], user['root']];
    '/etc/NetworkManager/dispatcher.d/05-netfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NetworkManager/dispatcher.d/05-netfs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/NetworkManager/dispatcher.d/05-netfs',
      require => [group['root'], Class['hosts'], file['-/etc/NetworkManager/dispatcher.d'], user['root']];
    '/etc/NetworkManager/dispatcher.d/10-dhclient':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NetworkManager/dispatcher.d/10-dhclient'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/NetworkManager/dispatcher.d/10-dhclient',
      require => [group['root'], Class['hosts'], file['-/etc/NetworkManager/dispatcher.d'], user['root']];
    '/etc/NetworkManager/dispatcher.d/98-puppet':
      checksum => 'md5',
      content => template('pysa_ipa/etc/NetworkManager/dispatcher.d/98-puppet'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/NetworkManager/dispatcher.d/98-puppet',
      require => [group['root'], Class['hosts'], file['-/etc/NetworkManager/dispatcher.d'], user['root']];
    '/etc/PackageKit/PackageKit.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/PackageKit/PackageKit.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/PackageKit/PackageKit.conf',
      require => [group['root'], Class['hosts'], file['-/etc/PackageKit'], user['root']];
    '/etc/PackageKit/Vendor.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/PackageKit/Vendor.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/PackageKit/Vendor.conf',
      require => [group['root'], Class['hosts'], file['-/etc/PackageKit'], user['root']];
    '/etc/Trolltech.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/Trolltech.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/Trolltech.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/X11/Xmodmap':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/Xmodmap'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/Xmodmap',
      require => [group['root'], Class['hosts'], file['-/etc/X11'], user['root']];
    '/etc/X11/Xresources':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/Xresources'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/Xresources',
      require => [group['root'], Class['hosts'], file['-/etc/X11'], user['root']];
    '/etc/X11/fontpath.d/cjkuni-fonts-uming/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/cjkuni-fonts-uming/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/cjkuni-fonts-uming/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/cjkuni-fonts-uming'], user['root']];
    '/etc/X11/fontpath.d/cjkuni-fonts-uming/fonts.scale':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/cjkuni-fonts-uming/fonts.scale'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/cjkuni-fonts-uming/fonts.scale',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/cjkuni-fonts-uming'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchb.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchb.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchb.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchb.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchb.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchb.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchbi.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchbi.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchbi.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchbi.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchbi.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchbi.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchr.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchr.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchr.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchr.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchr.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchr.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchri.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchri.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchri.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/bchri.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/bchri.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/bchri.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fcyr.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fcyr.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fcyr.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fcyr.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fcyr.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fcyr.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fcyri.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fcyri.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fcyri.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fcyri.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fcyri.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fcyri.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fhirw.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fhirw.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fhirw.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fkarw.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fkarw.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fkarw.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/fonts.scale':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/fonts.scale'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/fonts.scale',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrger.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrger.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrger.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgerb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgerb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgerb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgerd.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgerd.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgerd.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgero.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgero.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgero.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgkc.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgkc.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgkc.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgks.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgks.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgks.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgrr.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgrr.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgrr.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgrrb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgrrb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgrrb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrgrro.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrgrro.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrgrro.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hritr.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hritr.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hritr.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hritrb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hritrb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hritrb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hritro.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hritro.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hritro.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpld.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpld.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpld.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpldb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpldb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpldb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpldbi.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpldbi.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpldbi.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpldi.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpldi.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpldi.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplr.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplr.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplr.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplrb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplrb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplrb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplrbo.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplrbo.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplrbo.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplro.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplro.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplro.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpls.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpls.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpls.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplsb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplsb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplsb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplsbo.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplsbo.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplsbo.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplso.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplso.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplso.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplt.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplt.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplt.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpltb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpltb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpltb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrpltbi.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrpltbi.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrpltbi.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrplti.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrplti.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrplti.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrscc.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrscc.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrscc.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrsccb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrsccb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrsccb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrscco.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrscco.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrscco.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrscs.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrscs.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrscs.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrscsb.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrscsb.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrscsb.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrscso.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrscso.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrscso.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/hrsyr.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/hrsyr.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/hrsyr.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/putb.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/putb.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/putb.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/putbi.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/putbi.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/putbi.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/putr.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/putr.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/putr.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/putri.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/putri.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/putri.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/u003043t.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/u003043t.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/u003043t.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/u003043t.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/u003043t.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/u003043t.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/u004006t.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/u004006t.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/u004006t.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/default-ghostscript/u004006t.gsf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/default-ghostscript/u004006t.gsf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript/u004006t.gsf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/default-ghostscript'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/a010013l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/a010013l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/a010013l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/a010015l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/a010015l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/a010015l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/a010033l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/a010033l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/a010033l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/a010035l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/a010035l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/a010035l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/b018012l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/b018012l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/b018012l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/b018015l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/b018015l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/b018015l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/b018032l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/b018032l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/b018032l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/b018035l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/b018035l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/b018035l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/c059013l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/c059013l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/c059013l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/c059016l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/c059016l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/c059016l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/c059033l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/c059033l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/c059033l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/c059036l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/c059036l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/c059036l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/d050000l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/d050000l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/d050000l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/fonts.scale':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/fonts.scale'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/fonts.scale',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019003l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019003l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019003l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019004l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019004l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019004l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019023l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019023l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019023l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019024l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019024l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019024l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019043l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019043l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019043l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019044l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019044l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019044l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019063l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019063l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019063l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n019064l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n019064l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n019064l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n021003l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n021003l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n021003l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n021004l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n021004l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n021004l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n021023l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n021023l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n021023l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n021024l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n021024l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n021024l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n022003l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n022003l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n022003l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n022004l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n022004l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n022004l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n022023l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n022023l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n022023l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/n022024l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/n022024l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/n022024l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/p052003l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/p052003l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/p052003l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/p052004l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/p052004l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/p052004l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/p052023l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/p052023l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/p052023l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/p052024l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/p052024l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/p052024l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/s050000l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/s050000l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/s050000l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/fonts-default/z003034l.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/fonts-default/z003034l.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default/z003034l.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/fonts-default'], user['root']];
    '/etc/X11/fontpath.d/liberation-fonts/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/liberation-fonts/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/liberation-fonts/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/liberation-fonts'], user['root']];
    '/etc/X11/fontpath.d/liberation-fonts/fonts.scale':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/liberation-fonts/fonts.scale'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/liberation-fonts/fonts.scale',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/liberation-fonts'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30/fonts.alias':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30/fonts.alias'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30/fonts.alias',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTBI____.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTBI____.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTBI____.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTBI____.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTBI____.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTBI____.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTB_____.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTB_____.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTB_____.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTB_____.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTB_____.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTB_____.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTI_____.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTI_____.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTI_____.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTI_____.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTI_____.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTI_____.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTRG____.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTRG____.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTRG____.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTRG____.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTRG____.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/UTRG____.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0419bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0419bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0419bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0582bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0582bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0582bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0583bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0583bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0583bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0611bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0611bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0611bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0632bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0632bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0632bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0633bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0633bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0633bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0648bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0648bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0648bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0649bt_.afm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0649bt_.afm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/c0649bt_.afm',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/cursor.pfa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/cursor.pfa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/cursor.pfa',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/fonts.scale':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-Type1/fonts.scale'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1/fonts.scale',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-Type1'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10/fonts.alias':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10/fonts.alias'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10/fonts.alias',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10'], user['root']];
    '/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10/fonts.dir':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10/fonts.dir'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10/fonts.dir',
      require => [group['root'], Class['hosts'], file['-/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10'], user['root']];
    '/etc/X11/prefdm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/prefdm'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/prefdm',
      require => [group['root'], Class['hosts'], file['-/etc/X11'], user['root']];
    '/etc/X11/xdm/GiveConsole':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/GiveConsole'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xdm/GiveConsole',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/TakeConsole':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/TakeConsole'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xdm/TakeConsole',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xaccess':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xaccess'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xdm/Xaccess',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xreset':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xreset'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xdm/Xreset',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xresources':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xresources'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xdm/Xresources',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xservers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xservers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xdm/Xservers',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xsetup_0':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xsetup_0'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xdm/Xsetup_0',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xstartup':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xstartup'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xdm/Xstartup',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/Xwilling':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/Xwilling'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xdm/Xwilling',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xdm/xdm-config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xdm/xdm-config'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xdm/xdm-config',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xdm'], user['root']];
    '/etc/X11/xinit/Xclients':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/Xclients'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/Xclients',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit'], user['root']];
    '/etc/X11/xinit/Xsession':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/Xsession'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/Xsession',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit'], user['root']];
    '/etc/X11/xinit/xinitrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit'], user['root']];
    '/etc/X11/xinit/xinitrc-common':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc-common'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc-common',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit'], user['root']];
    '/etc/X11/xinit/xinitrc.d/00-start-message-bus.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc.d/00-start-message-bus.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d/00-start-message-bus.sh',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinitrc.d'], user['root']];
    '/etc/X11/xinit/xinitrc.d/50-xinput.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc.d/50-xinput.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d/50-xinput.sh',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinitrc.d'], user['root']];
    '/etc/X11/xinit/xinitrc.d/98vboxadd-xclient.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc.d/98vboxadd-xclient.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d/98vboxadd-xclient.sh',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinitrc.d'], user['root']];
    '/etc/X11/xinit/xinitrc.d/localuser.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc.d/localuser.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d/localuser.sh',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinitrc.d'], user['root']];
    '/etc/X11/xinit/xinitrc.d/xdg-user-dirs.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc.d/xdg-user-dirs.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d/xdg-user-dirs.sh',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinitrc.d'], user['root']];
    '/etc/X11/xinit/xinitrc.d/zz-liveinst.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinitrc.d/zz-liveinst.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d/zz-liveinst.sh',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinitrc.d'], user['root']];
    '/etc/X11/xinit/xinput.d/ibus.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinput.d/ibus.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xinit/xinput.d/ibus.conf',
      require => [group['root'], Class['hosts'], file['-/etc/X11/xinit/xinput.d'], user['root']];
    '/etc/X11/xinit/xinput.d/none.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinput.d/none.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xinit/xinput.d/none.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/X11/xinit/xinput.d'], package['imsettings']];
    '/etc/X11/xinit/xinput.d/xcompose.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinput.d/xcompose.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xinit/xinput.d/xcompose.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/X11/xinit/xinput.d'], package['imsettings']];
    '/etc/X11/xinit/xinput.d/xim.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/X11/xinit/xinput.d/xim.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/X11/xinit/xinput.d/xim.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/X11/xinit/xinput.d'], package['imsettings']];
    '/etc/abrt/abrt-action-save-package-data.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/abrt/abrt-action-save-package-data.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/abrt/abrt-action-save-package-data.conf',
      require => [group['root'], Class['hosts'], file['-/etc/abrt'], user['root']];
    '/etc/abrt/abrt.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/abrt/abrt.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/abrt/abrt.conf',
      require => [group['root'], Class['hosts'], file['-/etc/abrt'], user['root']];
    '/etc/abrt/gpg_keys':
      checksum => 'md5',
      content => template('pysa_ipa/etc/abrt/gpg_keys'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/abrt/gpg_keys',
      require => [group['root'], Class['hosts'], file['-/etc/abrt'], user['root']];
    '/etc/abrt/plugins/CCpp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/abrt/plugins/CCpp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/abrt/plugins/CCpp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/abrt/plugins'], user['root']];
    '/etc/abrt/plugins/python.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/abrt/plugins/python.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/abrt/plugins/python.conf',
      require => [group['root'], Class['hosts'], file['-/etc/abrt/plugins'], user['root']];
    '/etc/acpi/actions/power.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/acpi/actions/power.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/acpi/actions/power.sh',
      require => [group['root'], Class['hosts'], file['-/etc/acpi/actions'], user['root']];
    '/etc/acpi/events/power.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/acpi/events/power.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/acpi/events/power.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/acpi/events'], package['acpid']];
    '/etc/acpi/events/video.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/acpi/events/video.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/acpi/events/video.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/acpi/events'], package['acpid']];
    '/etc/adjtime':
      checksum => 'md5',
      content => template('pysa_ipa/etc/adjtime'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/adjtime',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/aliases':
      checksum => 'md5',
      content => template('pysa_ipa/etc/aliases'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/aliases',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/alsa/alsactl.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alsa/alsactl.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alsa/alsactl.conf',
      require => [group['root'], Class['hosts'], file['-/etc/alsa'], user['root']];
    '/etc/alsa/pulse-default.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alsa/pulse-default.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alsa/pulse-default.conf',
      require => [group['root'], Class['hosts'], file['-/etc/alsa'], user['root']];
    '/etc/alternatives/jre/lib/accessibility.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/accessibility.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/accessibility.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/amd64/jvm.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/amd64/jvm.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/amd64/jvm.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/amd64'], user['root']];
    '/etc/alternatives/jre/lib/amd64/server/Xusage.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/amd64/server/Xusage.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/amd64/server/Xusage.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/amd64/server'], user['root']];
    '/etc/alternatives/jre/lib/calendars.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/calendars.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/calendars.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/classlist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/classlist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/classlist',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/content-types.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/content-types.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/content-types.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/ext/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/ext/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/ext/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/ext'], user['root']];
    '/etc/alternatives/jre/lib/flavormap.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/flavormap.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/flavormap.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/images/cursors/cursors.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/images/cursors/cursors.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/images/cursors/cursors.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/images/cursors'], user['root']];
    '/etc/alternatives/jre/lib/jvm.hprof.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/jvm.hprof.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/jvm.hprof.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/logging.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/logging.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/logging.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/management/jmxremote.access':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/management/jmxremote.access'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/management/jmxremote.access',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/management'], user['root']];
    '/etc/alternatives/jre/lib/management/jmxremote.password.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/management/jmxremote.password.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/management/jmxremote.password.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/management'], user['root']];
    '/etc/alternatives/jre/lib/management/management.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/management/management.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/management/management.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/management'], user['root']];
    '/etc/alternatives/jre/lib/management/snmp.acl.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/management/snmp.acl.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/management/snmp.acl.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/management'], user['root']];
    '/etc/alternatives/jre/lib/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/net.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/net.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/net.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/psfont.properties.ja':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/psfont.properties.ja'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/psfont.properties.ja',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/psfontj2d.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/psfontj2d.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/psfontj2d.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/security/java.policy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/security/java.policy'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/security/java.policy',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/security'], user['root']];
    '/etc/alternatives/jre/lib/security/java.security':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/security/java.security'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/security/java.security',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/security'], user['root']];
    '/etc/alternatives/jre/lib/security/nss.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/security/nss.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/security/nss.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib/security'], user['root']];
    '/etc/alternatives/jre/lib/sound.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/sound.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/sound.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre/lib/tz.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre/lib/tz.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/tz.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/accessibility.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/accessibility.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/accessibility.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/amd64/jvm.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/amd64/jvm.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/amd64/jvm.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/amd64'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/amd64/server/Xusage.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/amd64/server/Xusage.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/amd64/server/Xusage.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/amd64/server'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/calendars.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/calendars.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/calendars.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/classlist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/classlist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/classlist',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/content-types.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/content-types.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/content-types.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/ext/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/ext/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/ext/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/ext'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/flavormap.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/flavormap.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/flavormap.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.10.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.10.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.10.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.11.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.11.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.11.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.12.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.12.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.12.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.9.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.9.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.9.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Fedora.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Gentoo.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Gentoo.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Gentoo.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.RedHat.6.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.RedHat.6.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.RedHat.6.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.SuSE.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.SuSE.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.SuSE.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.Ubuntu.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.Ubuntu.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.Ubuntu.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/fontconfig.properties.src':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/fontconfig.properties.src'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/fontconfig.properties.src',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/images/cursors/cursors.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/images/cursors/cursors.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/images/cursors/cursors.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/images/cursors'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/jvm.hprof.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/jvm.hprof.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/jvm.hprof.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/logging.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/logging.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/logging.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/management/jmxremote.access':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/management/jmxremote.access'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/management/jmxremote.access',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/management/jmxremote.password.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/management/jmxremote.password.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/management/jmxremote.password.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/management/management.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/management/management.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/management/management.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/management/snmp.acl.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/management/snmp.acl.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/management/snmp.acl.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/net.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/net.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/net.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/psfont.properties.ja':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/psfont.properties.ja'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/psfont.properties.ja',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/psfontj2d.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/psfontj2d.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/psfontj2d.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/security/java.policy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/security/java.policy'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/security/java.policy',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/security/java.security':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/security/java.security'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/security/java.security',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/security/java.security.old':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/security/java.security.old'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/security/java.security.old',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/security/nss.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/security/nss.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/security/nss.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/sound.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/sound.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/sound.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.6.0/lib/tz.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.6.0/lib/tz.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/tz.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.6.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/accessibility.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/accessibility.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/accessibility.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/amd64/jvm.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/amd64/jvm.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/amd64/jvm.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/amd64'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/amd64/server/Xusage.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/amd64/server/Xusage.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/amd64/server/Xusage.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/amd64/server'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/calendars.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/calendars.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/calendars.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/classlist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/classlist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/classlist',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/content-types.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/content-types.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/content-types.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/ext/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/ext/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/ext/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/ext'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/flavormap.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/flavormap.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/flavormap.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/images/cursors/cursors.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/images/cursors/cursors.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/images/cursors/cursors.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/images/cursors'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/jvm.hprof.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/jvm.hprof.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/jvm.hprof.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/logging.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/logging.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/logging.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/management/jmxremote.access':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/management/jmxremote.access'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/management/jmxremote.access',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/management/jmxremote.password.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/management/jmxremote.password.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/management/jmxremote.password.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/management/management.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/management/management.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/management/management.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/management/snmp.acl.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/management/snmp.acl.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/management/snmp.acl.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/management'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/net.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/net.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/net.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/psfont.properties.ja':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/psfont.properties.ja'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/psfont.properties.ja',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/psfontj2d.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/psfontj2d.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/psfontj2d.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/security/java.policy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/security/java.policy'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/security/java.policy',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/security/java.security':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/security/java.security'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/security/java.security',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/security/nss.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/security/nss.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/security/nss.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib/security'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/sound.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/sound.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/sound.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_1.7.0/lib/tz.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_1.7.0/lib/tz.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/tz.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_1.7.0/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/accessibility.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/accessibility.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/accessibility.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/amd64/jvm.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/amd64/jvm.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/amd64/jvm.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/amd64'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/amd64/server/Xusage.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/amd64/server/Xusage.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/amd64/server/Xusage.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/amd64/server'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/calendars.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/calendars.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/calendars.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/classlist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/classlist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/classlist',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/content-types.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/content-types.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/content-types.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/ext/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/ext/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/ext/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/ext'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/flavormap.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/flavormap.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/flavormap.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/images/cursors/cursors.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/images/cursors/cursors.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/images/cursors/cursors.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/images/cursors'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/jvm.hprof.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/jvm.hprof.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/jvm.hprof.txt',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/logging.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/logging.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/logging.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/management/jmxremote.access':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/management/jmxremote.access'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/management/jmxremote.access',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/management'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/management/jmxremote.password.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/management/jmxremote.password.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/management/jmxremote.password.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/management'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/management/management.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/management/management.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/management/management.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/management'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/management/snmp.acl.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/management/snmp.acl.template'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/management/snmp.acl.template',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/management'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/meta-index':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/meta-index'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/meta-index',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/net.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/net.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/net.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/psfont.properties.ja':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/psfont.properties.ja'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/psfont.properties.ja',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/psfontj2d.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/psfontj2d.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/psfontj2d.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/security/java.policy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/security/java.policy'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/security/java.policy',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/security'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/security/java.security':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/security/java.security'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/security/java.security',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/security'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/security/nss.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/security/nss.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/security/nss.cfg',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib/security'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/sound.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/sound.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/sound.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/alternatives/jre_openjdk/lib/tz.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/alternatives/jre_openjdk/lib/tz.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/tz.properties',
      require => [group['root'], Class['hosts'], file['-/etc/alternatives/jre_openjdk/lib'], user['root']];
    '/etc/anacrontab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/anacrontab'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/anacrontab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/anthy-conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/anthy-conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/anthy-conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/asound.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/asound.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/asound.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/at.deny':
      checksum => 'md5',
      content => template('pysa_ipa/etc/at.deny'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/at.deny',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/audisp/audispd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/audisp/audispd.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/audisp/audispd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/audisp'], package['audit']];
    '/etc/audisp/plugins.d/af_unix.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/audisp/plugins.d/af_unix.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/audisp/plugins.d/af_unix.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/audisp/plugins.d'], package['audit']];
    '/etc/audisp/plugins.d/syslog.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/audisp/plugins.d/syslog.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/audisp/plugins.d/syslog.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/audisp/plugins.d'], package['audit']];
    '/etc/audit/audit.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/audit/audit.rules'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/audit/audit.rules',
      require => [group['root'], Class['hosts'], file['-/etc/audit'], user['root']];
    '/etc/audit/auditd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/audit/auditd.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/audit/auditd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/audit'], package['audit']];
    '/etc/auto.master':
      checksum => 'md5',
      content => template('pysa_ipa/etc/auto.master'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/auto.master',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/auto.misc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/auto.misc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/auto.misc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/auto.net':
      checksum => 'md5',
      content => template('pysa_ipa/etc/auto.net'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/auto.net',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/auto.smb':
      checksum => 'md5',
      content => template('pysa_ipa/etc/auto.smb'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/auto.smb',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/autofs_ldap_auth.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/autofs_ldap_auth.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/autofs_ldap_auth.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/avahi/avahi-autoipd.action':
      checksum => 'md5',
      content => template('pysa_ipa/etc/avahi/avahi-autoipd.action'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/avahi/avahi-autoipd.action',
      require => [group['root'], Class['hosts'], file['-/etc/avahi'], user['root']];
    '/etc/bareos/.rndpwd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/.rndpwd'),
      group => 'root',
      mode => '0400',
      owner => 'root',
      path => '/etc/bareos/.rndpwd',
      require => [group['root'], Class['hosts'], file['-/etc/bareos'], user['root']];
    '/etc/bareos/bareos-dir.conf.rpmnew':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bareos-dir.conf.rpmnew'),
      group => 'bareos',
      mode => '0640',
      owner => 'bareos',
      path => '/etc/bareos/bareos-dir.conf.rpmnew',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['bareos']];
    '/etc/bareos/bareos-dir.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bareos-dir.conf.rpmsave'),
      group => 'bareos',
      mode => '0640',
      owner => 'bareos',
      path => '/etc/bareos/bareos-dir.conf.rpmsave',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['bareos']];
    '/etc/bareos/bareos-fd.conf.rpmnew':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bareos-fd.conf.rpmnew'),
      group => 'bareos',
      mode => '0640',
      owner => 'root',
      path => '/etc/bareos/bareos-fd.conf.rpmnew',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['root']];
    '/etc/bareos/bareos-fd.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bareos-fd.conf.rpmsave'),
      group => 'bareos',
      mode => '0640',
      owner => 'root',
      path => '/etc/bareos/bareos-fd.conf.rpmsave',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['root']];
    '/etc/bareos/bareos-sd.conf.rpmnew':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bareos-sd.conf.rpmnew'),
      group => 'bareos',
      mode => '0640',
      owner => 'bareos',
      path => '/etc/bareos/bareos-sd.conf.rpmnew',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['bareos']];
    '/etc/bareos/bareos-sd.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bareos-sd.conf.rpmsave'),
      group => 'bareos',
      mode => '0640',
      owner => 'bareos',
      path => '/etc/bareos/bareos-sd.conf.rpmsave',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['bareos']];
    '/etc/bareos/bat.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bat.conf.rpmsave'),
      group => 'bareos',
      mode => '0640',
      owner => 'root',
      path => '/etc/bareos/bat.conf.rpmsave',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['root']];
    '/etc/bareos/bconsole.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bareos/bconsole.conf.rpmsave'),
      group => 'bareos',
      mode => '0640',
      owner => 'root',
      path => '/etc/bareos/bconsole.conf.rpmsave',
      require => [group['bareos'], Class['hosts'], file['-/etc/bareos'], user['root']];
    '/etc/bash_completion.d/createrepo.bash':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/createrepo.bash'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/createrepo.bash',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/drbdadm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/drbdadm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/drbdadm',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/fcoeadm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/fcoeadm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/fcoeadm',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/fcoemon':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/fcoemon'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/fcoemon',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/gdbus-bash-completion.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/gdbus-bash-completion.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/bash_completion.d/gdbus-bash-completion.sh',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/git':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/git'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/git',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/gsettings-bash-completion.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/gsettings-bash-completion.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/bash_completion.d/gsettings-bash-completion.sh',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/gvfs-bash-completion.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/gvfs-bash-completion.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/gvfs-bash-completion.sh',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/lldpad':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/lldpad'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/bash_completion.d/lldpad',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/lldptool':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/lldptool'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/bash_completion.d/lldptool',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/pk-completion.bash':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/pk-completion.bash'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/pk-completion.bash',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/scl.bash':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/scl.bash'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/scl.bash',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/yum-utils.bash':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/yum-utils.bash'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/yum-utils.bash',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bash_completion.d/yum.bash':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bash_completion.d/yum.bash'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bash_completion.d/yum.bash',
      require => [group['root'], Class['hosts'], file['-/etc/bash_completion.d'], user['root']];
    '/etc/bashrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bashrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bashrc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/bluetooth/main.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bluetooth/main.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bluetooth/main.conf',
      require => [group['root'], Class['hosts'], file['-/etc/bluetooth'], user['root']];
    '/etc/bonobo-activation/bonobo-activation-config.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/bonobo-activation/bonobo-activation-config.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/bonobo-activation/bonobo-activation-config.xml',
      require => [group['root'], Class['hosts'], file['-/etc/bonobo-activation'], user['root']];
    '/etc/cas.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cas.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cas.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/centos-release':
      checksum => 'md5',
      content => template('pysa_ipa/etc/centos-release'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/centos-release',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/certmonger/certmonger.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/certmonger/certmonger.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/certmonger/certmonger.conf',
      require => [group['root'], Class['hosts'], file['-/etc/certmonger'], user['root']];
    '/etc/cgconfig.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cgconfig.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cgconfig.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/cgrules.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cgrules.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cgrules.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/cgsnapshot_blacklist.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cgsnapshot_blacklist.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cgsnapshot_blacklist.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/cron.d/0hourly':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.d/0hourly'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cron.d/0hourly',
      require => [group['root'], Class['hosts'], file['-/etc/cron.d'], user['root']];
    '/etc/cron.d/raid-check':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.d/raid-check'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cron.d/raid-check',
      require => [group['root'], Class['hosts'], file['-/etc/cron.d'], user['root']];
    '/etc/cron.d/sysstat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.d/sysstat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cron.d/sysstat',
      require => [group['root'], Class['hosts'], file['-/etc/cron.d'], user['root']];
    '/etc/cron.daily/cups':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/cups'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/cups',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.daily/logrotate':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/logrotate'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/logrotate',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.daily/makewhatis.cron':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/makewhatis.cron'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/makewhatis.cron',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.daily/mlocate.cron':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/mlocate.cron'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/mlocate.cron',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.daily/prelink':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/prelink'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/prelink',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.daily/readahead.cron':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/readahead.cron'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/readahead.cron',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.daily/tmpwatch':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.daily/tmpwatch'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.daily/tmpwatch',
      require => [group['root'], Class['hosts'], file['-/etc/cron.daily'], user['root']];
    '/etc/cron.deny':
      checksum => 'md5',
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/cron.deny',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/cron.hourly/0anacron':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.hourly/0anacron'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.hourly/0anacron',
      require => [group['root'], Class['hosts'], file['-/etc/cron.hourly'], user['root']];
    '/etc/cron.monthly/readahead-monthly.cron':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cron.monthly/readahead-monthly.cron'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/cron.monthly/readahead-monthly.cron',
      require => [group['root'], Class['hosts'], file['-/etc/cron.monthly'], user['root']];
    '/etc/crontab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/crontab'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/crontab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/crypttab':
      checksum => 'md5',
      group => 'root',
      mode => '0664',
      owner => 'root',
      path => '/etc/crypttab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/csh.cshrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/csh.cshrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/csh.cshrc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/csh.login':
      checksum => 'md5',
      content => template('pysa_ipa/etc/csh.login'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/csh.login',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/cups/classes.conf':
      checksum => 'md5',
      group => 'lp',
      mode => '0600',
      owner => 'root',
      path => '/etc/cups/classes.conf',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/client.conf':
      checksum => 'md5',
      group => 'lp',
      mode => '0644',
      owner => 'root',
      path => '/etc/cups/client.conf',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/cupsd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cups/cupsd.conf'),
      group => 'lp',
      mode => '0640',
      owner => 'root',
      path => '/etc/cups/cupsd.conf',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/cupsd.conf.default':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cups/cupsd.conf.default'),
      group => 'lp',
      mode => '0640',
      owner => 'root',
      path => '/etc/cups/cupsd.conf.default',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/lpoptions':
      checksum => 'md5',
      group => 'lp',
      mode => '0644',
      owner => 'root',
      path => '/etc/cups/lpoptions',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/paps.convs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cups/paps.convs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/cups/paps.convs',
      require => [group['root'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/printers.conf':
      checksum => 'md5',
      group => 'lp',
      mode => '0600',
      owner => 'root',
      path => '/etc/cups/printers.conf',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/snmp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/cups/snmp.conf'),
      group => 'lp',
      mode => '0644',
      owner => 'root',
      path => '/etc/cups/snmp.conf',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/cups/subscriptions.conf':
      checksum => 'md5',
      group => 'lp',
      mode => '0644',
      owner => 'root',
      path => '/etc/cups/subscriptions.conf',
      require => [group['lp'], Class['hosts'], file['-/etc/cups'], user['root']];
    '/etc/dbus-1/session.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/session.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/session.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1'], user['root']];
    '/etc/dbus-1/system.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1'], user['root']];
    '/etc/dbus-1/system.d/ConsoleKit.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/ConsoleKit.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/ConsoleKit.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/NetworkManager.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/NetworkManager.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/NetworkManager.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/Upstart.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/Upstart.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/Upstart.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/bluetooth.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/bluetooth.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/bluetooth.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/certmonger.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/certmonger.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/certmonger.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/cups.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/cups.conf'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/dbus-1/system.d/cups.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/dbus-abrt.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/dbus-abrt.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/dbus-abrt.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/dnsmasq.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/dnsmasq.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/dnsmasq.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/gdm.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/gdm.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/gdm.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/hal.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/hal.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/hal.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/net.reactivated.Fprint.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/net.reactivated.Fprint.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/net.reactivated.Fprint.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/nm-applet.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/nm-applet.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/nm-applet.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['NetworkManager-gnome']];
    '/etc/dbus-1/system.d/nm-avahi-autoipd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/nm-avahi-autoipd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/nm-avahi-autoipd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/nm-dhcp-client.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/nm-dhcp-client.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/nm-dhcp-client.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/nm-dispatcher.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/nm-dispatcher.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/nm-dispatcher.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/nm-ifcfg-rh.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/nm-ifcfg-rh.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/nm-ifcfg-rh.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/oddjob-mkhomedir.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/oddjob-mkhomedir.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/oddjob-mkhomedir.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/oddjob.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/oddjob.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/oddjob.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['oddjob']];
    '/etc/dbus-1/system.d/org.fedoraproject.Config.Firewall.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.fedoraproject.Config.Firewall.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.fedoraproject.Config.Firewall.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['system-config-firewall']];
    '/etc/dbus-1/system.d/org.fedoraproject.Config.Services.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.fedoraproject.Config.Services.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.fedoraproject.Config.Services.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['system-config-services']];
    '/etc/dbus-1/system.d/org.fedoraproject.systemconfig.kdump.mechanism.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.fedoraproject.systemconfig.kdump.mechanism.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.fedoraproject.systemconfig.kdump.mechanism.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['system-config-kdump']];
    '/etc/dbus-1/system.d/org.freedesktop.DeviceKit.Power.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.freedesktop.DeviceKit.Power.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.freedesktop.DeviceKit.Power.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/org.freedesktop.ModemManager.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.freedesktop.ModemManager.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.freedesktop.ModemManager.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/org.freedesktop.PackageKit.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.freedesktop.PackageKit.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.freedesktop.PackageKit.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.freedesktop.PolicyKit1.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/org.freedesktop.RealtimeKit1.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.freedesktop.RealtimeKit1.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.freedesktop.RealtimeKit1.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['rtkit']];
    '/etc/dbus-1/system.d/org.freedesktop.UDisks.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.freedesktop.UDisks.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.freedesktop.UDisks.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['udisks']];
    '/etc/dbus-1/system.d/org.gnome.CPUFreqSelector.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.gnome.CPUFreqSelector.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.gnome.CPUFreqSelector.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['gnome-applets']];
    '/etc/dbus-1/system.d/org.gnome.ClockApplet.Mechanism.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.gnome.ClockApplet.Mechanism.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.gnome.ClockApplet.Mechanism.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/org.gnome.GConf.Defaults.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.gnome.GConf.Defaults.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.gnome.GConf.Defaults.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/org.gnome.SystemMonitor.Mechanism.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.gnome.SystemMonitor.Mechanism.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.gnome.SystemMonitor.Mechanism.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['gnome-system-monitor']];
    '/etc/dbus-1/system.d/org.opensuse.CupsPkHelper.Mechanism.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/org.opensuse.CupsPkHelper.Mechanism.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/org.opensuse.CupsPkHelper.Mechanism.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/dbus-1/system.d'], package['cups-pk-helper']];
    '/etc/dbus-1/system.d/pulseaudio-system.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/pulseaudio-system.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/pulseaudio-system.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/dbus-1/system.d/wpa_supplicant.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dbus-1/system.d/wpa_supplicant.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dbus-1/system.d/wpa_supplicant.conf',
      require => [group['root'], Class['hosts'], file['-/etc/dbus-1/system.d'], user['root']];
    '/etc/default/nss':
      checksum => 'md5',
      content => template('pysa_ipa/etc/default/nss'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/default/nss',
      require => [group['root'], Class['hosts'], file['-/etc/default'], user['root']];
    '/etc/default/useradd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/default/useradd'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/default/useradd',
      require => [group['root'], Class['hosts'], file['-/etc/default'], user['root']];
    '/etc/depmod.d/dist.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/depmod.d/dist.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/depmod.d/dist.conf',
      require => [group['root'], Class['hosts'], file['-/etc/depmod.d'], user['root']];
    '/etc/depmod.d/kmod-drbd83.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/depmod.d/kmod-drbd83.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/depmod.d/kmod-drbd83.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/depmod.d'], package['kmod-drbd83']];
    '/etc/dhcp/dhclient.d/nis.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dhcp/dhclient.d/nis.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/dhcp/dhclient.d/nis.sh',
      require => [group['root'], Class['hosts'], file['-/etc/dhcp/dhclient.d'], user['root']];
    '/etc/dhcp/dhclient.d/ntp.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dhcp/dhclient.d/ntp.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/dhcp/dhclient.d/ntp.sh',
      require => [group['root'], Class['hosts'], file['-/etc/dhcp/dhclient.d'], user['root']];
    '/etc/dnsmasq.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dnsmasq.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dnsmasq.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/dracut.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/dracut.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/dracut.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/drbd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/drbd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/drbd.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/drbd.d/global_common.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/drbd.d/global_common.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/drbd.d/global_common.conf',
      require => [group['root'], Class['hosts'], file['-/etc/drbd.d'], user['root']];
    '/etc/drirc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/drirc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/drirc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/enscript.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/enscript.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/enscript.cfg',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['enscript']];
    '/etc/environment':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/environment',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ethers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ethers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ethers',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/event.d/ck-log-system-restart':
      checksum => 'md5',
      content => template('pysa_ipa/etc/event.d/ck-log-system-restart'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/event.d/ck-log-system-restart',
      require => [group['root'], Class['hosts'], file['-/etc/event.d'], user['root']];
    '/etc/event.d/ck-log-system-start':
      checksum => 'md5',
      content => template('pysa_ipa/etc/event.d/ck-log-system-start'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/event.d/ck-log-system-start',
      require => [group['root'], Class['hosts'], file['-/etc/event.d'], user['root']];
    '/etc/event.d/ck-log-system-stop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/event.d/ck-log-system-stop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/event.d/ck-log-system-stop',
      require => [group['root'], Class['hosts'], file['-/etc/event.d'], user['root']];
    '/etc/exports':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/exports',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/facter/facts.d/cpu_flags.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/facter/facts.d/cpu_flags.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/facter/facts.d/cpu_flags.sh',
      require => [group['root'], Class['hosts'], file['-/etc/facter/facts.d'], user['root']];
    '/etc/facter/facts.d/user.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/facter/facts.d/user.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/facter/facts.d/user.sh',
      require => [group['root'], Class['hosts'], file['-/etc/facter/facts.d'], user['root']];
    '/etc/fcoe/cfg-ethx':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fcoe/cfg-ethx'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fcoe/cfg-ethx',
      require => [group['root'], Class['hosts'], file['-/etc/fcoe'], user['root']];
    '/etc/fcoe/config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fcoe/config'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fcoe/config',
      require => [group['root'], Class['hosts'], file['-/etc/fcoe'], user['root']];
    '/etc/festival/siteinit.scm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/festival/siteinit.scm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/festival/siteinit.scm',
      require => [group['root'], Class['hosts'], file['-/etc/festival'], user['root']];
    '/etc/festival/sitevars.scm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/festival/sitevars.scm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/festival/sitevars.scm',
      require => [group['root'], Class['hosts'], file['-/etc/festival'], user['root']];
    '/etc/filesystems':
      checksum => 'md5',
      content => template('pysa_ipa/etc/filesystems'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/filesystems',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/fonts/conf.avail/10-autohint.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-autohint.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-autohint.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/10-no-sub-pixel.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-no-sub-pixel.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-no-sub-pixel.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/10-sub-pixel-bgr.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-sub-pixel-bgr.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-sub-pixel-bgr.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/10-sub-pixel-rgb.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-sub-pixel-rgb.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-sub-pixel-rgb.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/10-sub-pixel-vbgr.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-sub-pixel-vbgr.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-sub-pixel-vbgr.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/10-sub-pixel-vrgb.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-sub-pixel-vrgb.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-sub-pixel-vrgb.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/10-unhinted.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/10-unhinted.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/10-unhinted.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/20-fix-globaladvance.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/20-fix-globaladvance.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/20-fix-globaladvance.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/20-unhint-small-vera.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/20-unhint-small-vera.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/20-unhint-small-vera.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/25-unhint-nonlatin.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/25-unhint-nonlatin.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/25-unhint-nonlatin.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/30-metric-aliases.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/30-metric-aliases.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/30-metric-aliases.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/30-urw-aliases.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/30-urw-aliases.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/30-urw-aliases.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/40-nonlatin.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/40-nonlatin.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/40-nonlatin.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/45-latin.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/45-latin.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/45-latin.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/49-sansserif.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/49-sansserif.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/49-sansserif.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/50-user.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/50-user.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/50-user.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/51-local.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/51-local.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/51-local.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/60-latin.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/60-latin.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/60-latin.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/65-fonts-persian.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/65-fonts-persian.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/65-fonts-persian.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/65-khmer.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/65-khmer.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/65-khmer.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/65-nonlatin.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/65-nonlatin.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/65-nonlatin.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/69-unifont.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/69-unifont.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/69-unifont.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/70-no-bitmaps.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/70-no-bitmaps.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/70-no-bitmaps.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/70-yes-bitmaps.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/70-yes-bitmaps.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/70-yes-bitmaps.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/80-delicious.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/80-delicious.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/80-delicious.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.avail/90-synthetic.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.avail/90-synthetic.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.avail/90-synthetic.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.avail'], user['root']];
    '/etc/fonts/conf.d/25-no-bitmap-fedora.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.d/25-no-bitmap-fedora.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.d/25-no-bitmap-fedora.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.d'], user['root']];
    '/etc/fonts/conf.d/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/conf.d/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/conf.d/README',
      require => [group['root'], Class['hosts'], file['-/etc/fonts/conf.d'], user['root']];
    '/etc/fonts/fonts.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/fonts.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/fonts.conf',
      require => [group['root'], Class['hosts'], file['-/etc/fonts'], user['root']];
    '/etc/fonts/fonts.dtd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fonts/fonts.dtd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fonts/fonts.dtd',
      require => [group['root'], Class['hosts'], file['-/etc/fonts'], user['root']];
    '/etc/foomatic/defaultspooler':
      checksum => 'md5',
      content => template('pysa_ipa/etc/foomatic/defaultspooler'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/foomatic/defaultspooler',
      require => [group['root'], Class['hosts'], file['-/etc/foomatic'], user['root']];
    '/etc/foomatic/filter.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/foomatic/filter.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/foomatic/filter.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/foomatic'], package['foomatic']];
    '/etc/fprintd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/fprintd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/fprintd.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/gai.conf':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gai.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/gconf/2/evoldap.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/2/evoldap.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/2/evoldap.conf',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/2'], user['root']];
    '/etc/gconf/2/path':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/2/path'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/2/path',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/2'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-bg.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-bg.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-bg.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-bn.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-bn.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-bn.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-bn_IN.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-bn_IN.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-bn_IN.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-ca.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-ca.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-ca.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-cs.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-cs.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-cs.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-da.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-da.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-da.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-de.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-de.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-de.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-el.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-el.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-el.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-es.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-es.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-es.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-et.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-et.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-et.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-eu.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-eu.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-eu.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-fi.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-fi.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-fi.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-fr.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-fr.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-fr.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-gl.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-gl.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-gl.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-gu.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-gu.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-gu.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-he.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-he.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-he.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-hi.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-hi.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-hi.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-hr.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-hr.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-hr.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-hu.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-hu.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-hu.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-it.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-it.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-it.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-ja.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-ja.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-ja.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-ko.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-ko.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-ko.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-nb.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-nb.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-nb.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-nl.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-nl.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-nl.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-or.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-or.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-or.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-pa.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-pa.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-pa.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-pl.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-pl.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-pl.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-pt.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-pt.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-pt.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-pt_BR.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-pt_BR.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-pt_BR.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-ro.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-ro.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-ro.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-ru.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-ru.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-ru.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-sk.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-sk.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-sk.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-sl.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-sl.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-sl.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-sr.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-sr.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-sr.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-sv.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-sv.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-sv.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-tr.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-tr.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-tr.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-uk.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-uk.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-uk.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-zh_CN.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-zh_CN.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-zh_CN.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree-zh_TW.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree-zh_TW.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree-zh_TW.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/gconf.xml.defaults/%gconf-tree.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/gconf.xml.defaults/%gconf-tree.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults/%gconf-tree.xml',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/gconf.xml.defaults'], user['root']];
    '/etc/gconf/schemas/apps-evolution-attachment-reminder.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps-evolution-attachment-reminder.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps-evolution-attachment-reminder.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps-evolution-mail-notification.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps-evolution-mail-notification.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps-evolution-mail-notification.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps-evolution-mail-prompts-checkdefault.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps-evolution-mail-prompts-checkdefault.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps-evolution-mail-prompts-checkdefault.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps-evolution-template-placeholders.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps-evolution-template-placeholders.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps-evolution-template-placeholders.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_evolution_addressbook.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_evolution_addressbook.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_evolution_addressbook.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_evolution_calendar.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_evolution_calendar.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_evolution_calendar.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_evolution_email_custom_header.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_evolution_email_custom_header.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_evolution_email_custom_header.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_evolution_shell.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_evolution_shell.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_evolution_shell.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_exchange_addressbook-2.32.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_exchange_addressbook-2.32.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_exchange_addressbook-2.32.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_gnome_settings_daemon_housekeeping.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_gnome_settings_daemon_housekeeping.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_gnome_settings_daemon_housekeeping.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_gnome_settings_daemon_keybindings.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_gnome_settings_daemon_keybindings.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_gnome_settings_daemon_keybindings.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_gnome_settings_daemon_xrandr.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_gnome_settings_daemon_xrandr.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_gnome_settings_daemon_xrandr.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_nautilus_preferences.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_nautilus_preferences.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_nautilus_preferences.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/apps_xchat_url_handler.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/apps_xchat_url_handler.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/apps_xchat_url_handler.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/at-spi.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/at-spi.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/at-spi.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/baobab.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/baobab.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/baobab.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/bluetooth-manager.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/bluetooth-manager.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/bluetooth-manager.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/brasero.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/brasero.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/brasero.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/charpick.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/charpick.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/charpick.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/cheese.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/cheese.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/cheese.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/clock.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/clock.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/clock.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-annotate.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-annotate.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-annotate.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-blur.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-blur.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-blur.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-clone.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-clone.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-clone.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-commands.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-commands.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-commands.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-core.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-core.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-core.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-cube.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-cube.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-cube.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-dbus.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-dbus.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-dbus.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-decoration.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-decoration.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-decoration.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-fade.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-fade.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-fade.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-fs.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-fs.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-fs.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-gconf.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-gconf.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-gconf.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-glib.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-glib.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-glib.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-gnomecompat.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-gnomecompat.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-gnomecompat.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-ini.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-ini.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-ini.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-inotify.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-inotify.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-inotify.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-kconfig.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-kconfig.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-kconfig.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-minimize.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-minimize.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-minimize.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-move.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-move.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-move.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-obs.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-obs.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-obs.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-place.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-place.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-place.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-png.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-png.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-png.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-regex.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-regex.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-regex.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-resize.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-resize.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-resize.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-rotate.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-rotate.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-rotate.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-scale.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-scale.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-scale.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-screenshot.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-screenshot.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-screenshot.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-svg.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-svg.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-svg.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-switcher.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-switcher.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-switcher.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-video.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-video.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-video.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-wall.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-wall.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-wall.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-water.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-water.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-water.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-wobbly.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-wobbly.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-wobbly.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/compiz-zoom.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/compiz-zoom.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/compiz-zoom.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/control-center.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/control-center.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/control-center.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/cpufreq-applet.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/cpufreq-applet.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/cpufreq-applet.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_default_applications.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_default_applications.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_default_applications.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_accessibility_keyboard.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_accessibility_keyboard.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_accessibility_keyboard.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_accessibility_startup.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_accessibility_startup.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_accessibility_startup.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_applications_at_mobility.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_applications_at_mobility.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_applications_at_mobility.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_applications_at_visual.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_applications_at_visual.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_applications_at_visual.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_applications_browser.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_applications_browser.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_applications_browser.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_applications_office.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_applications_office.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_applications_office.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_applications_terminal.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_applications_terminal.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_applications_terminal.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_applications_window_manager.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_applications_window_manager.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_applications_window_manager.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_background.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_background.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_background.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_file_views.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_file_views.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_file_views.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_font_rendering.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_font_rendering.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_font_rendering.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_interface.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_interface.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_interface.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_keybindings.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_keybindings.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_keybindings.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_lockdown.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_lockdown.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_lockdown.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_keyboard.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_keyboard.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_keyboard.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_keyboard_xkb.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_keyboard_xkb.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_keyboard_xkb.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_monitor.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_monitor.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_monitor.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_mouse.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_mouse.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_mouse.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_smartcard.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_smartcard.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_smartcard.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_touchpad.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_touchpad.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_touchpad.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_peripherals_wacom.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_peripherals_wacom.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_peripherals_wacom.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_sound.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_sound.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_sound.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_thumbnail_cache.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_thumbnail_cache.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_thumbnail_cache.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_thumbnailers.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_thumbnailers.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_thumbnailers.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_typing_break.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_typing_break.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_typing_break.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/desktop_gnome_url_handlers.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/desktop_gnome_url_handlers.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/desktop_gnome_url_handlers.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/drivemount.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/drivemount.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/drivemount.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/ekiga.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/ekiga.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/ekiga.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/eog.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/eog.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/eog.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/evince-thumbnailer-comics.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/evince-thumbnailer-comics.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/evince-thumbnailer-comics.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/evince-thumbnailer-dvi.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/evince-thumbnailer-dvi.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/evince-thumbnailer-dvi.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/evince-thumbnailer-ps.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/evince-thumbnailer-ps.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/evince-thumbnailer-ps.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/evince-thumbnailer.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/evince-thumbnailer.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/evince-thumbnailer.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/evince.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/evince.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/evince.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/evolution-mail.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/evolution-mail.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/evolution-mail.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/file-roller.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/file-roller.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/file-roller.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/fish.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/fish.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/fish.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/fontilus.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/fontilus.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/fontilus.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gcalctool.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gcalctool.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gcalctool.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gdm-simple-greeter.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gdm-simple-greeter.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gdm-simple-greeter.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gedit-file-browser.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gedit-file-browser.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gedit-file-browser.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gedit.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gedit.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gedit.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/geyes.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/geyes.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/geyes.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-audio-profiles.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-audio-profiles.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-audio-profiles.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-control-center.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-control-center.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-control-center.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-dictionary.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-dictionary.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-dictionary.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-keyring.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-keyring.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-keyring.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-packagekit.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-packagekit.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-packagekit.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-power-manager.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-power-manager.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-power-manager.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-screensaver.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-screensaver.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-screensaver.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-screenshot.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-screenshot.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-screenshot.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-search-tool.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-search-tool.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-search-tool.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-session.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-session.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-session.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-settings-daemon.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-settings-daemon.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-settings-daemon.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-system-monitor.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-system-monitor.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-system-monitor.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnome-terminal.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnome-terminal.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnome-terminal.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gnote.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gnote.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gnote.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gok.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gok.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gok.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gstreamer-0.10.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gstreamer-0.10.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gstreamer-0.10.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gthumb.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gthumb.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gthumb.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gucharmap.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gucharmap.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gucharmap.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gwd.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gwd.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gwd.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/gweather.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/gweather.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/gweather.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/ibus-chewing.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/ibus-chewing.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/ibus-chewing.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/ibus.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/ibus.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/ibus.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/imsettings-applet.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/imsettings-applet.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/imsettings-applet.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/libcanberra.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/libcanberra.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/libcanberra.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/metacity.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/metacity.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/metacity.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/mini-commander-global.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/mini-commander-global.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/mini-commander-global.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/mini-commander.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/mini-commander.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/mini-commander.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/mousetweaks.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/mousetweaks.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/mousetweaks.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/multiload.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/multiload.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/multiload.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/nautilus-open-terminal.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/nautilus-open-terminal.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/nautilus-open-terminal.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/nm-applet.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/nm-applet.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/nm-applet.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/notification-daemon.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/notification-daemon.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/notification-daemon.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/notification_area_applet.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/notification_area_applet.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/notification_area_applet.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/nst.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/nst.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/nst.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/pager.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/pager.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/pager.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/panel-compatibility.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/panel-compatibility.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/panel-compatibility.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/panel-default-setup.entries':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/panel-default-setup.entries'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/panel-default-setup.entries',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/panel-general.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/panel-general.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/panel-general.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/panel-global.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/panel-global.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/panel-global.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/panel-object.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/panel-object.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/panel-object.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/panel-toplevel.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/panel-toplevel.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/panel-toplevel.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/pilot.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/pilot.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/pilot.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/pointer-capture-applet.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/pointer-capture-applet.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/pointer-capture-applet.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/purple.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/purple.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/purple.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/rhythmbox.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/rhythmbox.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/rhythmbox.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/seahorse.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/seahorse.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/seahorse.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/sound-juicer.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/sound-juicer.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/sound-juicer.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/system_dns_sd.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/system_dns_sd.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/system_dns_sd.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/system_http_proxy.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/system_http_proxy.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/system_http_proxy.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/system_smb.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/system_smb.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/system_smb.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/tasklist.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/tasklist.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/tasklist.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/totem-handlers.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/totem-handlers.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/totem-handlers.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/totem-video-thumbnail.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/totem-video-thumbnail.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/totem-video-thumbnail.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/totem.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/totem.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/totem.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/vino-server.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/vino-server.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/vino-server.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/window-list.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/window-list.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/window-list.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/workspace-switcher.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/workspace-switcher.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/workspace-switcher.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gconf/schemas/yelp.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gconf/schemas/yelp.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gconf/schemas/yelp.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gconf/schemas'], user['root']];
    '/etc/gdm/Init/Default':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gdm/Init/Default'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/gdm/Init/Default',
      require => [group['root'], Class['hosts'], file['-/etc/gdm/Init'], user['root']];
    '/etc/gdm/PostLogin/Default.sample':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gdm/PostLogin/Default.sample'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/gdm/PostLogin/Default.sample',
      require => [group['root'], Class['hosts'], file['-/etc/gdm/PostLogin'], user['root']];
    '/etc/gdm/PostSession/Default':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gdm/PostSession/Default'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/gdm/PostSession/Default',
      require => [group['root'], Class['hosts'], file['-/etc/gdm/PostSession'], user['root']];
    '/etc/gdm/PreSession/Default':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gdm/PreSession/Default'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/gdm/PreSession/Default',
      require => [group['root'], Class['hosts'], file['-/etc/gdm/PreSession'], user['root']];
    '/etc/gdm/custom.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gdm/custom.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gdm/custom.conf',
      require => [group['root'], Class['hosts'], file['-/etc/gdm'], user['root']];
    '/etc/gdm/gdm.schemas':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gdm/gdm.schemas'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gdm/gdm.schemas',
      require => [group['root'], Class['hosts'], file['-/etc/gdm'], user['root']];
    '/etc/ggz.modules.d/kdegames':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ggz.modules.d/kdegames'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ggz.modules.d/kdegames',
      require => [group['root'], Class['hosts'], file['-/etc/ggz.modules.d'], user['root']];
    '/etc/ghostscript/8.70/CIDFnmap.local':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ghostscript/8.70/CIDFnmap.local',
      require => [group['root'], Class['hosts'], file['-/etc/ghostscript/8.70'], user['root']];
    '/etc/ghostscript/8.70/Fontmap.local':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ghostscript/8.70/Fontmap.local',
      require => [group['root'], Class['hosts'], file['-/etc/ghostscript/8.70'], user['root']];
    '/etc/ghostscript/8.70/cidfmap.local':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ghostscript/8.70/cidfmap.local',
      require => [group['root'], Class['hosts'], file['-/etc/ghostscript/8.70'], user['root']];
    '/etc/gimp/2.0/controllerrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/controllerrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/controllerrc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/gimprc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/gimprc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/gimprc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/gtkrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/gtkrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/gtkrc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/menurc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/menurc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/menurc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/ps-menurc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/ps-menurc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/ps-menurc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/sessionrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/sessionrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/sessionrc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/templaterc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/templaterc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/templaterc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gimp/2.0/unitrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gimp/2.0/unitrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gimp/2.0/unitrc',
      require => [group['root'], Class['hosts'], file['-/etc/gimp/2.0'], user['root']];
    '/etc/gnome-vfs-2.0/modules/default-modules.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gnome-vfs-2.0/modules/default-modules.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gnome-vfs-2.0/modules/default-modules.conf',
      require => [group['root'], Class['hosts'], file['-/etc/gnome-vfs-2.0/modules'], user['root']];
    '/etc/gnome-vfs-2.0/modules/ssl-modules.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gnome-vfs-2.0/modules/ssl-modules.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gnome-vfs-2.0/modules/ssl-modules.conf',
      require => [group['root'], Class['hosts'], file['-/etc/gnome-vfs-2.0/modules'], user['root']];
    '/etc/gshadow':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gshadow'),
      group => 'root',
      mode => '0',
      owner => 'root',
      path => '/etc/gshadow',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/gssapi_mech.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gssapi_mech.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gssapi_mech.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/gtk-2.0/gtkrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gtk-2.0/gtkrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gtk-2.0/gtkrc',
      require => [group['root'], Class['hosts'], file['-/etc/gtk-2.0'], user['root']];
    '/etc/gtk-2.0/x86_64-redhat-linux-gnu/gdk-pixbuf.loaders':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gtk-2.0/x86_64-redhat-linux-gnu/gdk-pixbuf.loaders'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gtk-2.0/x86_64-redhat-linux-gnu/gdk-pixbuf.loaders',
      require => [group['root'], Class['hosts'], file['-/etc/gtk-2.0/x86_64-redhat-linux-gnu'], user['root']];
    '/etc/gtk-2.0/x86_64-redhat-linux-gnu/gtk.immodules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/gtk-2.0/x86_64-redhat-linux-gnu/gtk.immodules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/gtk-2.0/x86_64-redhat-linux-gnu/gtk.immodules',
      require => [group['root'], Class['hosts'], file['-/etc/gtk-2.0/x86_64-redhat-linux-gnu'], user['root']];
    '/etc/ha.d/resource.d/drbddisk':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ha.d/resource.d/drbddisk'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ha.d/resource.d/drbddisk',
      require => [group['root'], Class['hosts'], file['-/etc/ha.d/resource.d'], user['root']];
    '/etc/ha.d/resource.d/drbdupper':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ha.d/resource.d/drbdupper'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ha.d/resource.d/drbdupper',
      require => [group['root'], Class['hosts'], file['-/etc/ha.d/resource.d'], user['root']];
    '/etc/haproxy/default':
      checksum => 'md5',
      content => template('pysa_ipa/etc/haproxy/default'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/haproxy/default',
      require => [group['root'], Class['hosts'], file['-/etc/haproxy'], user['root']];
    '/etc/haproxy/haproxy.cfg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/haproxy/haproxy.cfg'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/haproxy/haproxy.cfg',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/haproxy'], package['haproxy']];
    '/etc/hba.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/hba.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/hba.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/hiera.yaml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/hiera.yaml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/hiera.yaml',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/host.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/host.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/host.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/hp/hplip.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/hp/hplip.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/hp/hplip.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/hp'], package['hplip-common']];
    '/etc/htdig/HtFileType-magic.mime':
      checksum => 'md5',
      content => template('pysa_ipa/etc/htdig/HtFileType-magic.mime'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/htdig/HtFileType-magic.mime',
      require => [group['root'], Class['hosts'], file['-/etc/htdig'], user['root']];
    '/etc/htdig/cookies.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/htdig/cookies.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/htdig/cookies.txt',
      require => [group['root'], Class['hosts'], file['-/etc/htdig'], user['root']];
    '/etc/htdig/htdig.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/htdig/htdig.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/htdig/htdig.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/htdig'], package['htdig']];
    '/etc/htdig/mime.types':
      checksum => 'md5',
      content => template('pysa_ipa/etc/htdig/mime.types'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/htdig/mime.types',
      require => [group['root'], Class['hosts'], file['-/etc/htdig'], user['root']];
    '/etc/httpd/conf.d/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf.d/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf.d/README',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf.d'], user['root']];
    '/etc/httpd/conf.d/ldap.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf.d/ldap.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf.d/ldap.conf',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf.d'], user['root']];
    '/etc/httpd/conf.d/mod_dnssd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf.d/mod_dnssd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf.d/mod_dnssd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/httpd/conf.d'], package['mod_dnssd']];
    '/etc/httpd/conf.d/php.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf.d/php.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf.d/php.conf',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf.d'], user['root']];
    '/etc/httpd/conf.d/welcome.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf.d/welcome.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf.d/welcome.conf',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf.d'], user['root']];
    '/etc/httpd/conf/httpd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf/httpd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf/httpd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf'], user['root']];
    '/etc/httpd/conf/httpd.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf/httpd.conf.rpmsave'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf/httpd.conf.rpmsave',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf'], user['root']];
    '/etc/httpd/conf/magic':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/conf/magic'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/conf/magic',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/conf'], user['root']];
    '/etc/httpd/logs/access_log':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/access_log',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/httpd/logs/access_log-20131114':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/logs/access_log-20131114'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/access_log-20131114',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/httpd/logs/access_log-20131119':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/logs/access_log-20131119'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/access_log-20131119',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/httpd/logs/error_log':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/error_log',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/httpd/logs/error_log-20131114':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/logs/error_log-20131114'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/error_log-20131114',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/httpd/logs/error_log-20131119':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/logs/error_log-20131119'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/error_log-20131119',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/httpd/logs/error_log-20131216':
      checksum => 'md5',
      content => template('pysa_ipa/etc/httpd/logs/error_log-20131216'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/httpd/logs/error_log-20131216',
      require => [group['root'], Class['hosts'], file['-/etc/httpd/logs'], user['root']];
    '/etc/idmapd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/idmapd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/idmapd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['nfs-utils-lib']];
    '/etc/init.d/NetworkManager':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/NetworkManager'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/NetworkManager',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/abrt-ccpp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/abrt-ccpp'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/abrt-ccpp',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/abrt-oops':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/abrt-oops'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/abrt-oops',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/abrtd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/abrtd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/abrtd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/acpid':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/acpid'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/acpid',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/atd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/atd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/atd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/auditd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/auditd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/auditd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/autofs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/autofs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/autofs',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/blk-availability':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/blk-availability'),
      group => 'root',
      mode => '0555',
      owner => 'root',
      path => '/etc/init.d/blk-availability',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/bluetooth':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/bluetooth'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/bluetooth',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/certmonger':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/certmonger'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/certmonger',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/cgconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/cgconfig'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/cgconfig',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/cgred':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/cgred'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/cgred',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/cpuspeed':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/cpuspeed'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/cpuspeed',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/crond':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/crond'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/crond',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/cups':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/cups'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/cups',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/dnsmasq':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/dnsmasq'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/dnsmasq',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/drbd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/drbd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/drbd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/fcoe':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/fcoe'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/fcoe',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/firstboot':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/firstboot'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/firstboot',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/functions':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/functions'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init.d/functions',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/haldaemon':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/haldaemon'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/haldaemon',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/halt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/halt'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/halt',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/haproxy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/haproxy'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/haproxy',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/hsqldb':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/hsqldb'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/hsqldb',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/htcacheclean':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/htcacheclean'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/htcacheclean',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/httpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/httpd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/httpd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/ip6tables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/ip6tables'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/ip6tables',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/ipsec':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/ipsec'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/ipsec',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/iptables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/iptables'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/iptables',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/irqbalance':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/irqbalance'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/irqbalance',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/iscsi':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/iscsi'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/iscsi',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/iscsid':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/iscsid'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/iscsid',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/kdump':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/kdump'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/kdump',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/killall':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/killall'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/killall',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/livesys':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/livesys'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/livesys',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/livesys-late':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/livesys-late'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/livesys-late',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/lldpad':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/lldpad'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/lldpad',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/lvm2-lvmetad':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/lvm2-lvmetad'),
      group => 'root',
      mode => '0555',
      owner => 'root',
      path => '/etc/init.d/lvm2-lvmetad',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/lvm2-monitor':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/lvm2-monitor'),
      group => 'root',
      mode => '0555',
      owner => 'root',
      path => '/etc/init.d/lvm2-monitor',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/mdmonitor':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/mdmonitor'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/mdmonitor',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/messagebus':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/messagebus'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/messagebus',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/multipathd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/multipathd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/multipathd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/mysqld':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/mysqld'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/mysqld',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/netconsole':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/netconsole'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/netconsole',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/netfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/netfs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/netfs',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/network':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/network'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/network',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/nfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/nfs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/nfs',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/nfslock':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/nfslock'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/nfslock',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/nscd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/nscd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/nscd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/nslcd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/nslcd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/nslcd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/ntpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/ntpd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/ntpd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/ntpdate':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/ntpdate'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/ntpdate',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/nxserver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/nxserver'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/nxserver',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/oddjobd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/oddjobd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/oddjobd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/openct':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/openct'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/openct',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/pcscd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/pcscd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/pcscd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/portreserve':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/portreserve'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/portreserve',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/postfix':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/postfix'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/postfix',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/psacct':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/psacct'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/psacct',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/puppet':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/puppet'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/puppet',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/quota_nld':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/quota_nld'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/quota_nld',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rdisc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rdisc'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rdisc',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/restorecond':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/restorecond'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/restorecond',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rngd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rngd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rngd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rpcbind':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rpcbind'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rpcbind',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rpcgssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rpcgssd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rpcgssd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rpcidmapd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rpcidmapd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rpcidmapd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rpcsvcgssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rpcsvcgssd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rpcsvcgssd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/rsyslog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/rsyslog'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/rsyslog',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/sandbox':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/sandbox'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/sandbox',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/saslauthd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/saslauthd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/saslauthd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/single':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/single'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/single',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/smartd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/smartd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/smartd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/snmpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/snmpd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/snmpd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/snmptrapd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/snmptrapd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/snmptrapd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/spice-vdagentd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/spice-vdagentd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/spice-vdagentd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/sshd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/sshd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/sshd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/sssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/sssd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/sssd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/stinit':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/stinit'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/stinit',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/sysstat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/sysstat'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/sysstat',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/udev-post':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/udev-post'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/udev-post',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/vboxadd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/vboxadd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/vboxadd',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/vboxadd-service':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/vboxadd-service'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/vboxadd-service',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/vboxadd-x11':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/vboxadd-x11'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/vboxadd-x11',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/vncserver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/vncserver'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/vncserver',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/wdaemon':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/wdaemon'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/wdaemon',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/wpa_supplicant':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/wpa_supplicant'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/wpa_supplicant',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init.d/ypbind':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init.d/ypbind'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/init.d/ypbind',
      require => [group['root'], Class['hosts'], file['-/etc/init.d'], user['root']];
    '/etc/init/control-alt-delete.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/control-alt-delete.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/control-alt-delete.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/init-system-dbus.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/init-system-dbus.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/init-system-dbus.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/kexec-disable.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/kexec-disable.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/kexec-disable.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/plymouth-shutdown.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/plymouth-shutdown.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/plymouth-shutdown.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/prefdm.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/prefdm.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/prefdm.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/quit-plymouth.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/quit-plymouth.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/quit-plymouth.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/rc.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/rc.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/rc.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/rcS-emergency.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/rcS-emergency.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/rcS-emergency.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/rcS-sulogin.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/rcS-sulogin.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/rcS-sulogin.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/rcS.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/rcS.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/rcS.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/readahead-collector.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/readahead-collector.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/readahead-collector.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/init'], package['readahead']];
    '/etc/init/readahead-disable-services.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/readahead-disable-services.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/readahead-disable-services.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/init'], package['readahead']];
    '/etc/init/readahead.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/readahead.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/readahead.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/init'], package['readahead']];
    '/etc/init/serial.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/serial.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/serial.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/splash-manager.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/splash-manager.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/splash-manager.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/start-ttys.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/start-ttys.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/start-ttys.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/init/tty.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/init/tty.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/init/tty.conf',
      require => [group['root'], Class['hosts'], file['-/etc/init'], user['root']];
    '/etc/inittab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/inittab'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/inittab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/inputrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/inputrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/inputrc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ipa/ca.crt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipa/ca.crt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ipa/ca.crt',
      require => [group['root'], Class['hosts'], file['-/etc/ipa'], user['root']];
    '/etc/ipa/default.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipa/default.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ipa/default.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ipa'], user['root']];
    '/etc/iproute2/ematch_map':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iproute2/ematch_map'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iproute2/ematch_map',
      require => [group['root'], Class['hosts'], file['-/etc/iproute2'], user['root']];
    '/etc/iproute2/rt_dsfield':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iproute2/rt_dsfield'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iproute2/rt_dsfield',
      require => [group['root'], Class['hosts'], file['-/etc/iproute2'], user['root']];
    '/etc/iproute2/rt_protos':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iproute2/rt_protos'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iproute2/rt_protos',
      require => [group['root'], Class['hosts'], file['-/etc/iproute2'], user['root']];
    '/etc/iproute2/rt_realms':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iproute2/rt_realms'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iproute2/rt_realms',
      require => [group['root'], Class['hosts'], file['-/etc/iproute2'], user['root']];
    '/etc/iproute2/rt_scopes':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iproute2/rt_scopes'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iproute2/rt_scopes',
      require => [group['root'], Class['hosts'], file['-/etc/iproute2'], user['root']];
    '/etc/iproute2/rt_tables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iproute2/rt_tables'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iproute2/rt_tables',
      require => [group['root'], Class['hosts'], file['-/etc/iproute2'], user['root']];
    '/etc/ipsec.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['openswan']];
    '/etc/ipsec.d/policies/block':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.d/policies/block'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.d/policies/block',
      require => [group['root'], Class['hosts'], file['-/etc/ipsec.d/policies'], user['root']];
    '/etc/ipsec.d/policies/clear':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.d/policies/clear'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.d/policies/clear',
      require => [group['root'], Class['hosts'], file['-/etc/ipsec.d/policies'], user['root']];
    '/etc/ipsec.d/policies/clear-or-private':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.d/policies/clear-or-private'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.d/policies/clear-or-private',
      require => [group['root'], Class['hosts'], file['-/etc/ipsec.d/policies'], user['root']];
    '/etc/ipsec.d/policies/private':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.d/policies/private'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.d/policies/private',
      require => [group['root'], Class['hosts'], file['-/etc/ipsec.d/policies'], user['root']];
    '/etc/ipsec.d/policies/private-or-clear':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.d/policies/private-or-clear'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.d/policies/private-or-clear',
      require => [group['root'], Class['hosts'], file['-/etc/ipsec.d/policies'], user['root']];
    '/etc/ipsec.secrets':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ipsec.secrets'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ipsec.secrets',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/iscsi/initiatorname.iscsi':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iscsi/initiatorname.iscsi'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/iscsi/initiatorname.iscsi',
      require => [group['root'], Class['hosts'], file['-/etc/iscsi'], user['root']];
    '/etc/iscsi/iscsid.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/iscsi/iscsid.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/iscsi/iscsid.conf',
      require => [group['root'], Class['hosts'], file['-/etc/iscsi'], user['root']];
    '/etc/issue':
      checksum => 'md5',
      content => template('pysa_ipa/etc/issue'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/issue',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/issue.net':
      checksum => 'md5',
      content => template('pysa_ipa/etc/issue.net'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/issue.net',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/java/font.properties':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/font.properties'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/font.properties',
      require => [group['root'], Class['hosts'], file['-/etc/java'], user['root']];
    '/etc/java/java.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/java.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/java.conf',
      require => [group['root'], Class['hosts'], file['-/etc/java'], user['root']];
    '/etc/java/jpackage-release':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/jpackage-release'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/jpackage-release',
      require => [group['root'], Class['hosts'], file['-/etc/java'], user['root']];
    '/etc/java/security/security.d/1000-gnu.java.security.provider.Gnu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/security/security.d/1000-gnu.java.security.provider.Gnu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/security/security.d/1000-gnu.java.security.provider.Gnu',
      require => [group['root'], Class['hosts'], file['-/etc/java/security/security.d'], user['root']];
    '/etc/java/security/security.d/1001-gnu.javax.crypto.jce.GnuCrypto':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/security/security.d/1001-gnu.javax.crypto.jce.GnuCrypto'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/security/security.d/1001-gnu.javax.crypto.jce.GnuCrypto',
      require => [group['root'], Class['hosts'], file['-/etc/java/security/security.d'], user['root']];
    '/etc/java/security/security.d/1002-gnu.javax.crypto.jce.GnuSasl':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/security/security.d/1002-gnu.javax.crypto.jce.GnuSasl'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/security/security.d/1002-gnu.javax.crypto.jce.GnuSasl',
      require => [group['root'], Class['hosts'], file['-/etc/java/security/security.d'], user['root']];
    '/etc/java/security/security.d/1003-gnu.javax.net.ssl.provider.Jessie':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/security/security.d/1003-gnu.javax.net.ssl.provider.Jessie'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/security/security.d/1003-gnu.javax.net.ssl.provider.Jessie',
      require => [group['root'], Class['hosts'], file['-/etc/java/security/security.d'], user['root']];
    '/etc/java/security/security.d/1004-gnu.javax.security.auth.callback.GnuCallbacks':
      checksum => 'md5',
      content => template('pysa_ipa/etc/java/security/security.d/1004-gnu.javax.security.auth.callback.GnuCallbacks'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/java/security/security.d/1004-gnu.javax.security.auth.callback.GnuCallbacks',
      require => [group['root'], Class['hosts'], file['-/etc/java/security/security.d'], user['root']];
    '/etc/kde/env/env.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/env/env.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kde/env/env.sh',
      require => [group['root'], Class['hosts'], file['-/etc/kde/env'], user['root']];
    '/etc/kde/env/gpg-agent-startup.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/env/gpg-agent-startup.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/kde/env/gpg-agent-startup.sh',
      require => [group['root'], Class['hosts'], file['-/etc/kde/env'], user['root']];
    '/etc/kde/env/imsettings-kde.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/env/imsettings-kde.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kde/env/imsettings-kde.sh',
      require => [group['root'], Class['hosts'], file['-/etc/kde/env'], user['root']];
    '/etc/kde/env/ksshaskpass.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/env/ksshaskpass.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kde/env/ksshaskpass.sh',
      require => [group['root'], Class['hosts'], file['-/etc/kde/env'], user['root']];
    '/etc/kde/kdm/Xsession':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/kdm/Xsession'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/kde/kdm/Xsession',
      require => [group['root'], Class['hosts'], file['-/etc/kde/kdm'], user['root']];
    '/etc/kde/kdm/backgroundrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/kdm/backgroundrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kde/kdm/backgroundrc',
      require => [group['root'], Class['hosts'], file['-/etc/kde/kdm'], user['root']];
    '/etc/kde/kdm/kdmrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/kdm/kdmrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kde/kdm/kdmrc',
      require => [group['root'], Class['hosts'], file['-/etc/kde/kdm'], user['root']];
    '/etc/kde/shutdown/gpg-agent-shutdown.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde/shutdown/gpg-agent-shutdown.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/kde/shutdown/gpg-agent-shutdown.sh',
      require => [group['root'], Class['hosts'], file['-/etc/kde/shutdown'], user['root']];
    '/etc/kde4rc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kde4rc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kde4rc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/kderc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kderc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kderc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/kdump-adv-conf/kdump_initscripts/init':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kdump-adv-conf/kdump_initscripts/init'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/kdump-adv-conf/kdump_initscripts/init',
      require => [group['root'], Class['hosts'], file['-/etc/kdump-adv-conf/kdump_initscripts'], user['root']];
    '/etc/kdump-adv-conf/kdump_initscripts/kdumpinit.rootfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kdump-adv-conf/kdump_initscripts/kdumpinit.rootfs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kdump-adv-conf/kdump_initscripts/kdumpinit.rootfs',
      require => [group['root'], Class['hosts'], file['-/etc/kdump-adv-conf/kdump_initscripts'], user['root']];
    '/etc/kdump-adv-conf/kdump_sample_manifests/manifest.localrootfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kdump-adv-conf/kdump_sample_manifests/manifest.localrootfs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kdump-adv-conf/kdump_sample_manifests/manifest.localrootfs',
      require => [group['root'], Class['hosts'], file['-/etc/kdump-adv-conf/kdump_sample_manifests'], user['root']];
    '/etc/kdump.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/kdump.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/kdump.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/krb5.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/krb5.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/krb5.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/krb5.conf.ipabkp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/krb5.conf.ipabkp'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/krb5.conf.ipabkp',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ksysguarddrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ksysguarddrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ksysguarddrc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/latrace.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['latrace']];
    '/etc/latrace.d/ctype.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/ctype.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/ctype.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/dirent.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/dirent.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/dirent.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/dlfcn.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/dlfcn.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/dlfcn.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/fcntl.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/fcntl.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/fcntl.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/getopt.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/getopt.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/getopt.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/inet.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/inet.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/inet.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/ioctl.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/ioctl.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/ioctl.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/libintl.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/libintl.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/libintl.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/libio.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/libio.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/libio.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/locale.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/locale.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/locale.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/misc.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/misc.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/misc.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/mman.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/mman.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/mman.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/ncurses.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/ncurses.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/ncurses.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/netdb.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/netdb.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/netdb.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/pthread.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/pthread.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/pthread.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/pwd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/pwd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/pwd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/resource.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/resource.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/resource.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/signal.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/signal.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/signal.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/socket.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/socket.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/socket.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/stat.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/stat.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/stat.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/stdio.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/stdio.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/stdio.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/stdlib.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/stdlib.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/stdlib.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/string.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/string.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/string.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/sysdeps/x86_64/latrace.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/sysdeps/x86_64/latrace.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/sysdeps/x86_64/latrace.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d/sysdeps/x86_64'], package['latrace']];
    '/etc/latrace.d/sysdeps/x86_64/syscall.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/sysdeps/x86_64/syscall.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/sysdeps/x86_64/syscall.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d/sysdeps/x86_64'], package['latrace']];
    '/etc/latrace.d/syslog.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/syslog.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/syslog.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/term.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/term.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/term.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/termios.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/termios.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/termios.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/time.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/time.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/time.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/typedefs.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/typedefs.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/typedefs.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/unistd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/unistd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/unistd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/utmp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/utmp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/utmp.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/latrace.d/wait.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/latrace.d/wait.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/latrace.d/wait.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/latrace.d'], package['latrace']];
    '/etc/ld.so.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ld.so.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ld.so.conf.d/atlas-x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/atlas-x86_64.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ld.so.conf.d/atlas-x86_64.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/ld.so.conf.d'], package['atlas']];
    '/etc/ld.so.conf.d/ctapi-x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/ctapi-x86_64.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ld.so.conf.d/ctapi-x86_64.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ld.so.conf.d'], user['root']];
    '/etc/ld.so.conf.d/kernel-2.6.32-358.23.2.el6.x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/kernel-2.6.32-358.23.2.el6.x86_64.conf'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/ld.so.conf.d/kernel-2.6.32-358.23.2.el6.x86_64.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ld.so.conf.d'], user['root']];
    '/etc/ld.so.conf.d/kernel-2.6.32-358.el6.x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/kernel-2.6.32-358.el6.x86_64.conf'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/ld.so.conf.d/kernel-2.6.32-358.el6.x86_64.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ld.so.conf.d'], user['root']];
    '/etc/ld.so.conf.d/kernel-2.6.32-431.1.2.0.1.el6.x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/kernel-2.6.32-431.1.2.0.1.el6.x86_64.conf'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/ld.so.conf.d/kernel-2.6.32-431.1.2.0.1.el6.x86_64.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ld.so.conf.d'], user['root']];
    '/etc/ld.so.conf.d/mysql-x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/mysql-x86_64.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ld.so.conf.d/mysql-x86_64.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ld.so.conf.d'], user['root']];
    '/etc/ld.so.conf.d/qt-x86_64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/qt-x86_64.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ld.so.conf.d/qt-x86_64.conf',
      require => [group['root'], Class['hosts'], file['-/etc/ld.so.conf.d'], user['root']];
    '/etc/ld.so.conf.d/xulrunner-64.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ld.so.conf.d/xulrunner-64.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ld.so.conf.d/xulrunner-64.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/ld.so.conf.d'], package['xulrunner']];
    '/etc/libaudit.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libaudit.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/libaudit.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/libreport/events.d/abrt_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/abrt_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/abrt_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/ccpp_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/ccpp_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/ccpp_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/gconf_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/gconf_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/gconf_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/koops_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/koops_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/koops_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/mailx_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/mailx_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/mailx_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/print_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/print_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/print_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/python_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/python_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/python_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/rhtsupport_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/rhtsupport_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/rhtsupport_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/smart_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/smart_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/smart_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events.d/tarball_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/tarball_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/tarball_event.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/libreport/events.d'], package['libreport-plugin-reportuploader']];
    '/etc/libreport/events.d/uploader_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/uploader_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/uploader_event.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/libreport/events.d'], package['libreport-plugin-reportuploader']];
    '/etc/libreport/events.d/vimrc_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events.d/vimrc_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events.d/vimrc_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events.d'], user['root']];
    '/etc/libreport/events/analyze_LocalGDB.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/analyze_LocalGDB.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/analyze_LocalGDB.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/collect_GConf.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/collect_GConf.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/collect_GConf.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/collect_vimrc_system.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/collect_vimrc_system.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/collect_vimrc_system.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/collect_vimrc_user.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/collect_vimrc_user.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/collect_vimrc_user.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/collect_xsession_errors.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/collect_xsession_errors.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/collect_xsession_errors.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_Kerneloops.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_Kerneloops.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_Kerneloops.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_Logger.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_Logger.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_Logger.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_Logger.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_Logger.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_Logger.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_Mailx.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_Mailx.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_Mailx.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_RHTSupport.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_RHTSupport.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_RHTSupport.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_RHTSupportAttach.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_RHTSupportAttach.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_RHTSupportAttach.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_Tarball.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_Tarball.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_Tarball.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/events/report_Uploader.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/events/report_Uploader.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/events/report_Uploader.xml',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/events'], user['root']];
    '/etc/libreport/forbidden_words.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/forbidden_words.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/forbidden_words.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport'], user['root']];
    '/etc/libreport/plugins/mailx.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/plugins/mailx.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/plugins/mailx.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/plugins'], user['root']];
    '/etc/libreport/plugins/rhtsupport.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/plugins/rhtsupport.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/plugins/rhtsupport.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport/plugins'], user['root']];
    '/etc/libreport/report_event.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libreport/report_event.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libreport/report_event.conf',
      require => [group['root'], Class['hosts'], file['-/etc/libreport'], user['root']];
    '/etc/libuser.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/libuser.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/libuser.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/login.defs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/login.defs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/login.defs',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/logrotate.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['logrotate']];
    '/etc/logrotate.d/cups':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/cups'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/cups',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/dracut':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/dracut'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/dracut',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/haproxy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/haproxy'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/haproxy',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/httpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/httpd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/httpd',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/iptraf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/iptraf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/iptraf',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/iscsiuiolog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/iscsiuiolog'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/iscsiuiolog',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/mysqld':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/mysqld'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/mysqld',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/ppp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/ppp'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/ppp',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/psacct':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/psacct'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/psacct',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/puppet':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/puppet'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/puppet',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/sssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/sssd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/sssd',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/syslog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/syslog'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/syslog',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/wpa_supplicant':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/wpa_supplicant'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/wpa_supplicant',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/logrotate.d/yum':
      checksum => 'md5',
      content => template('pysa_ipa/etc/logrotate.d/yum'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/logrotate.d/yum',
      require => [group['root'], Class['hosts'], file['-/etc/logrotate.d'], user['root']];
    '/etc/lsb-release':
      checksum => 'md5',
      content => template('pysa_ipa/etc/lsb-release'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/lsb-release.d/base-4.0-amd64':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/base-4.0-amd64',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/base-4.0-noarch':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/base-4.0-noarch',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/core-4.0-amd64':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/core-4.0-amd64',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/core-4.0-noarch':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/core-4.0-noarch',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/graphics-4.0-amd64':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/graphics-4.0-amd64',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/graphics-4.0-noarch':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/graphics-4.0-noarch',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/printing-4.0-amd64':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/printing-4.0-amd64',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/lsb-release.d/printing-4.0-noarch':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lsb-release.d/printing-4.0-noarch',
      require => [group['root'], Class['hosts'], file['-/etc/lsb-release.d'], user['root']];
    '/etc/ltrace.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ltrace.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ltrace.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['ltrace']];
    '/etc/lvm/archive/vg_centos6_00000-77458935.vg':
      checksum => 'md5',
      content => template('pysa_ipa/etc/lvm/archive/vg_centos6_00000-77458935.vg'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/lvm/archive/vg_centos6_00000-77458935.vg',
      require => [group['root'], Class['hosts'], file['-/etc/lvm/archive'], user['root']];
    '/etc/lvm/backup/vg_centos6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/lvm/backup/vg_centos6'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/lvm/backup/vg_centos6',
      require => [group['root'], Class['hosts'], file['-/etc/lvm/backup'], user['root']];
    '/etc/lvm/cache/.cache':
      checksum => 'md5',
      content => template('pysa_ipa/etc/lvm/cache/.cache'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/lvm/cache/.cache',
      require => [group['root'], Class['hosts'], file['-/etc/lvm/cache'], user['root']];
    '/etc/lvm/lvm.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/lvm/lvm.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/lvm/lvm.conf',
      require => [group['root'], Class['hosts'], file['-/etc/lvm'], user['root']];
    '/etc/magic':
      checksum => 'md5',
      content => template('pysa_ipa/etc/magic'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/magic',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/mail.rc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/mail.rc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/mail.rc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/mailcap':
      checksum => 'md5',
      content => template('pysa_ipa/etc/mailcap'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/mailcap',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/makedev.d/00macros':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/00macros'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/00macros',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01alsa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01alsa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01alsa',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01cdrom':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01cdrom'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01cdrom',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01console':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01console'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01console',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01ftape':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01ftape'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01ftape',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01generic':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01generic'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01generic',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01ia64':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01ia64'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01ia64',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01ibcs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01ibcs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01ibcs',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01ide':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01ide'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01ide',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01ipfilter':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01ipfilter'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01ipfilter',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01isdn':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01isdn'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01isdn',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01linux-2.6.x':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01linux-2.6.x'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01linux-2.6.x',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01linux1394':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01linux1394'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01linux1394',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01mouse':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01mouse'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01mouse',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01qic':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01qic'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01qic',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01raid':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01raid'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01raid',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01redhat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01redhat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01redhat',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01s390':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01s390'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01s390',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01sound':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01sound'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01sound',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01std':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01std'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01std',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01undocumented':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01undocumented'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01undocumented',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/01v4l':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/01v4l'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/01v4l',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/02cciss':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/02cciss'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/02cciss',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/02dac960':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/02dac960'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/02dac960',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/02ida':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/02ida'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/02ida',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/makedev.d/02linux-2.6.x':
      checksum => 'md5',
      content => template('pysa_ipa/etc/makedev.d/02linux-2.6.x'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/makedev.d/02linux-2.6.x',
      require => [group['root'], Class['hosts'], file['-/etc/makedev.d'], user['root']];
    '/etc/man.config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/man.config'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/man.config',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/maven/fragments/postgresql-jdbc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/maven/fragments/postgresql-jdbc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/maven/fragments/postgresql-jdbc',
      require => [group['root'], Class['hosts'], file['-/etc/maven/fragments'], user['root']];
    '/etc/maven/maven2-depmap.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/maven/maven2-depmap.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/maven/maven2-depmap.xml',
      require => [group['root'], Class['hosts'], file['-/etc/maven'], user['root']];
    '/etc/mime.types':
      checksum => 'md5',
      content => template('pysa_ipa/etc/mime.types'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/mime.types',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/mke2fs.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/mke2fs.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/mke2fs.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/modprobe.d/blacklist-visor.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/modprobe.d/blacklist-visor.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/modprobe.d/blacklist-visor.conf',
      require => [group['root'], Class['hosts'], file['-/etc/modprobe.d'], user['root']];
    '/etc/modprobe.d/blacklist.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/modprobe.d/blacklist.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/modprobe.d/blacklist.conf',
      require => [group['root'], Class['hosts'], file['-/etc/modprobe.d'], user['root']];
    '/etc/modprobe.d/dist-alsa.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/modprobe.d/dist-alsa.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/modprobe.d/dist-alsa.conf',
      require => [group['root'], Class['hosts'], file['-/etc/modprobe.d'], user['root']];
    '/etc/modprobe.d/dist-oss.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/modprobe.d/dist-oss.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/modprobe.d/dist-oss.conf',
      require => [group['root'], Class['hosts'], file['-/etc/modprobe.d'], user['root']];
    '/etc/modprobe.d/dist.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/modprobe.d/dist.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/modprobe.d/dist.conf',
      require => [group['root'], Class['hosts'], file['-/etc/modprobe.d'], user['root']];
    '/etc/modprobe.d/openfwwf.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/modprobe.d/openfwwf.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/modprobe.d/openfwwf.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/modprobe.d'], package['b43-openfwwf']];
    '/etc/motd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/motd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/motd',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/mtab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/mtab'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/mtab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/mtools.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/mtools.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/mtools.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/nanorc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/nanorc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/nanorc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/netconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/netconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/netconfig',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/networks':
      checksum => 'md5',
      content => template('pysa_ipa/etc/networks'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/networks',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/nfsmount.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/nfsmount.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/nfsmount.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/nscd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/nscd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/nscd.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/nslcd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/nslcd.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/nslcd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['nss-pam-ldapd']];
    '/etc/nsswitch.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/nsswitch.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/nsswitch.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ntp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ntp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ntp.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ntp.conf.rpmnew':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ntp.conf.rpmnew'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ntp.conf.rpmnew',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/ntp/crypto/pw':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ntp/crypto/pw'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ntp/crypto/pw',
      require => [group['root'], Class['hosts'], file['-/etc/ntp/crypto'], user['root']];
    '/etc/ntp/keys':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ntp/keys'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ntp/keys',
      require => [group['root'], Class['hosts'], file['-/etc/ntp'], user['root']];
    '/etc/ntp/step-tickers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ntp/step-tickers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ntp/step-tickers',
      require => [group['root'], Class['hosts'], file['-/etc/ntp'], user['root']];
    '/etc/obex-data-server/capability.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/obex-data-server/capability.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/obex-data-server/capability.xml',
      require => [group['root'], Class['hosts'], file['-/etc/obex-data-server'], user['root']];
    '/etc/obex-data-server/imaging_capabilities.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/obex-data-server/imaging_capabilities.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/obex-data-server/imaging_capabilities.xml',
      require => [group['root'], Class['hosts'], file['-/etc/obex-data-server'], user['root']];
    '/etc/oddjobd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/oddjobd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/oddjobd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['oddjob']];
    '/etc/oddjobd.conf.d/oddjobd-introspection.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/oddjobd.conf.d/oddjobd-introspection.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/oddjobd.conf.d/oddjobd-introspection.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/oddjobd.conf.d'], package['oddjob']];
    '/etc/oddjobd.conf.d/oddjobd-mkhomedir.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/oddjobd.conf.d/oddjobd-mkhomedir.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/oddjobd.conf.d/oddjobd-mkhomedir.conf',
      require => [group['root'], Class['hosts'], file['-/etc/oddjobd.conf.d'], user['root']];
    '/etc/openct.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/openct.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/openct.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['openct']];
    '/etc/openldap/certs/password':
      checksum => 'md5',
      content => template('pysa_ipa/etc/openldap/certs/password'),
      group => 'root',
      mode => '0400',
      owner => 'root',
      path => '/etc/openldap/certs/password',
      require => [group['root'], Class['hosts'], file['-/etc/openldap/certs'], user['root']];
    '/etc/openldap/ldap.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/openldap/ldap.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/openldap/ldap.conf',
      require => [group['root'], Class['hosts'], file['-/etc/openldap'], user['root']];
    '/etc/openldap/ldap.conf.ipabkp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/openldap/ldap.conf.ipabkp'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/openldap/ldap.conf.ipabkp',
      require => [group['root'], Class['hosts'], file['-/etc/openldap'], user['root']];
    '/etc/pam.d/atd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/atd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/atd',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/authconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/authconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/authconfig',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/authconfig-gtk':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/authconfig-gtk'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/authconfig-gtk',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/authconfig-tui':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/authconfig-tui'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/authconfig-tui',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/chfn':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/chfn'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/chfn',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/chsh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/chsh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/chsh',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/config-util':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/config-util'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/config-util',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/crond':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/crond'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/crond',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/cups':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/cups'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/pam.d/cups',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/cvs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/cvs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/cvs',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/eject':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/eject'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/eject',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/fingerprint-auth-ac':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/fingerprint-auth-ac'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/fingerprint-auth-ac',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/gdm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/gdm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/gdm',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/gdm-autologin':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/gdm-autologin'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/gdm-autologin',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/gdm-fingerprint':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/gdm-fingerprint'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/gdm-fingerprint',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/gdm-password':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/gdm-password'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/gdm-password',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/gnome-screensaver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/gnome-screensaver'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/gnome-screensaver',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/halt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/halt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/halt',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/kcheckpass':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/kcheckpass'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/kcheckpass',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/kdm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/kdm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/kdm',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/kdm-np':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/kdm-np'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/kdm-np',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/kppp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/kppp'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/kppp',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/kscreensaver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/kscreensaver'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/kscreensaver',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/ksu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/ksu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/ksu',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/liveinst':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/liveinst'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/liveinst',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/login':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/login'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/login',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/newrole':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/newrole'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/newrole',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/nxsshd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/nxsshd'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/pam.d/nxsshd',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/other':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/other'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/other',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/passwd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/passwd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/passwd',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/password-auth-ac':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/password-auth-ac'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/password-auth-ac',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/polkit-1':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/polkit-1'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/polkit-1',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/poweroff':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/poweroff'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/poweroff',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/ppp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/ppp'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/ppp',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/reboot':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/reboot'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/reboot',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/remote':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/remote'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/remote',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/run_init':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/run_init'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/run_init',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/runuser':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/runuser'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/runuser',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/runuser-l':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/runuser-l'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/runuser-l',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/setup':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/setup'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/setup',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/smartcard-auth-ac':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/smartcard-auth-ac'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/smartcard-auth-ac',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/smtp.postfix':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/smtp.postfix'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/smtp.postfix',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/ssh-keycat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/ssh-keycat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/ssh-keycat',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/sshd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/sshd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/sshd',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/su':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/su'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/su',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/su-l':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/su-l'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/su-l',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/sudo':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/sudo'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/sudo',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/sudo-i':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/sudo-i'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/sudo-i',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-auth-ac':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-auth-ac'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-auth-ac',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-authentication':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-authentication'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-authentication',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-date':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-date'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-date',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-kdump':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-kdump'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-kdump',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-keyboard':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-keyboard'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-keyboard',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-network':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-network'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-network',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-network-cmd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-network-cmd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-network-cmd',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/system-config-users':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/system-config-users'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/system-config-users',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/wireshark':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/wireshark'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/wireshark',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/xdm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/xdm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/xdm',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam.d/xserver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam.d/xserver'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam.d/xserver',
      require => [group['root'], Class['hosts'], file['-/etc/pam.d'], user['root']];
    '/etc/pam_ldap.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pam_ldap.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pam_ldap.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/pango/pangox.aliases':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pango/pangox.aliases'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pango/pangox.aliases',
      require => [group['root'], Class['hosts'], file['-/etc/pango'], user['root']];
    '/etc/pango/x86_64-redhat-linux-gnu/pango.modules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pango/x86_64-redhat-linux-gnu/pango.modules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pango/x86_64-redhat-linux-gnu/pango.modules',
      require => [group['root'], Class['hosts'], file['-/etc/pango/x86_64-redhat-linux-gnu'], user['root']];
    '/etc/pbm2ppa.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pbm2ppa.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pbm2ppa.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/pcmcia/config.opts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pcmcia/config.opts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pcmcia/config.opts',
      require => [group['root'], Class['hosts'], file['-/etc/pcmcia'], user['root']];
    '/etc/pear.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pear.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pear.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/php.d/curl.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/curl.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/curl.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/dom.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/dom.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/dom.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-xml']];
    '/etc/php.d/fileinfo.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/fileinfo.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/fileinfo.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/gd.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/gd.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/gd.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-gd']];
    '/etc/php.d/json.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/json.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/json.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/memcache.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/memcache.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/memcache.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-pecl-memcache']];
    '/etc/php.d/mysql.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/mysql.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/mysql.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-mysql']];
    '/etc/php.d/mysqli.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/mysqli.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/mysqli.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-mysql']];
    '/etc/php.d/pdo.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/pdo.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/pdo.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/pdo_mysql.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/pdo_mysql.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/pdo_mysql.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-mysql']];
    '/etc/php.d/pdo_sqlite.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/pdo_sqlite.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/pdo_sqlite.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/phar.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/phar.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/phar.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/pspell.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/pspell.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/pspell.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-pspell']];
    '/etc/php.d/snmp.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/snmp.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/snmp.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-snmp']];
    '/etc/php.d/sqlite3.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/sqlite3.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/sqlite3.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.d/wddx.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/wddx.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/wddx.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-xml']];
    '/etc/php.d/xmlreader.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/xmlreader.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/xmlreader.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-xml']];
    '/etc/php.d/xmlrpc.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/xmlrpc.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/xmlrpc.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-xmlrpc']];
    '/etc/php.d/xmlwriter.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/xmlwriter.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/xmlwriter.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-xml']];
    '/etc/php.d/xsl.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/xsl.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/xsl.ini',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/php.d'], package['php-xml']];
    '/etc/php.d/zip.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.d/zip.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.d/zip.ini',
      require => [group['root'], Class['hosts'], file['-/etc/php.d'], user['root']];
    '/etc/php.ini':
      checksum => 'md5',
      content => template('pysa_ipa/etc/php.ini'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/php.ini',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/pinforc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pinforc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pinforc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/pki/ca-trust/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/ca-trust/README',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust'], user['root']];
    '/etc/pki/ca-trust/extracted/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/README',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted'], user['root']];
    '/etc/pki/ca-trust/extracted/java/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/java/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/java/README',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/java'], user['root']];
    '/etc/pki/ca-trust/extracted/openssl/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/openssl/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/openssl/README',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/openssl'], user['root']];
    '/etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/openssl/ca-bundle.trust.crt',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/openssl'], user['root']];
    '/etc/pki/ca-trust/extracted/pem/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/pem/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/pem/README',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/pem'], user['root']];
    '/etc/pki/ca-trust/extracted/pem/email-ca-bundle.pem':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/pem/email-ca-bundle.pem'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/pem/email-ca-bundle.pem',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/pem'], user['root']];
    '/etc/pki/ca-trust/extracted/pem/objsign-ca-bundle.pem':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/pem/objsign-ca-bundle.pem'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/pem/objsign-ca-bundle.pem',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/pem'], user['root']];
    '/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem'),
      group => 'root',
      mode => '0444',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/pem/tls-ca-bundle.pem',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/extracted/pem'], user['root']];
    '/etc/pki/ca-trust/source/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/ca-trust/source/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/ca-trust/source/README',
      require => [group['root'], Class['hosts'], file['-/etc/pki/ca-trust/source'], user['root']];
    '/etc/pki/nssdb/pkcs11.txt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/nssdb/pkcs11.txt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/nssdb/pkcs11.txt',
      require => [group['root'], Class['hosts'], file['-/etc/pki/nssdb'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-6',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Debug-6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Debug-6'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Debug-6',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Security-6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Security-6'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Security-6',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Testing-6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Testing-6'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Testing-6',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-elrepo.org',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-nginx':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-nginx'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-nginx',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
      require => [group['root'], Class['hosts'], file['-/etc/pki/rpm-gpg'], user['root']];
    '/etc/pki/tls/certs/Makefile':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/certs/Makefile'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/tls/certs/Makefile',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/certs'], user['root']];
    '/etc/pki/tls/certs/ca-bundle.crt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/certs/ca-bundle.crt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/tls/certs/ca-bundle.crt',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/certs'], user['root']];
    '/etc/pki/tls/certs/ca-bundle.trust.crt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/certs/ca-bundle.trust.crt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/tls/certs/ca-bundle.trust.crt',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/certs'], user['root']];
    '/etc/pki/tls/certs/make-dummy-cert':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/certs/make-dummy-cert'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/certs/make-dummy-cert',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/certs'], user['root']];
    '/etc/pki/tls/certs/renew-dummy-cert':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/certs/renew-dummy-cert'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/certs/renew-dummy-cert',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/certs'], user['root']];
    '/etc/pki/tls/misc/CA':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/misc/CA'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/misc/CA',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/misc'], user['root']];
    '/etc/pki/tls/misc/c_hash':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/misc/c_hash'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/misc/c_hash',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/misc'], user['root']];
    '/etc/pki/tls/misc/c_info':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/misc/c_info'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/misc/c_info',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/misc'], user['root']];
    '/etc/pki/tls/misc/c_issuer':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/misc/c_issuer'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/misc/c_issuer',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/misc'], user['root']];
    '/etc/pki/tls/misc/c_name':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/misc/c_name'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/pki/tls/misc/c_name',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls/misc'], user['root']];
    '/etc/pki/tls/openssl.cnf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pki/tls/openssl.cnf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pki/tls/openssl.cnf',
      require => [group['root'], Class['hosts'], file['-/etc/pki/tls'], user['root']];
    '/etc/plymouth/plymouthd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/plymouth/plymouthd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/plymouth/plymouthd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/plymouth'], user['root']];
    '/etc/pm-utils-hd-apm-restore.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pm-utils-hd-apm-restore.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pm-utils-hd-apm-restore.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/pnm2ppa.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pnm2ppa.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pnm2ppa.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/polkit-1/localauthority.conf.d/50-localauthority.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/polkit-1/localauthority.conf.d/50-localauthority.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/polkit-1/localauthority.conf.d/50-localauthority.conf',
      require => [group['root'], Class['hosts'], file['-/etc/polkit-1/localauthority.conf.d'], user['root']];
    '/etc/polkit-1/localauthority.conf.d/60-desktop-policy.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/polkit-1/localauthority.conf.d/60-desktop-policy.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/polkit-1/localauthority.conf.d/60-desktop-policy.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/polkit-1/localauthority.conf.d'], package['polkit-desktop-policy']];
    '/etc/polkit-1/nullbackend.conf.d/50-nullbackend.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/polkit-1/nullbackend.conf.d/50-nullbackend.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/polkit-1/nullbackend.conf.d/50-nullbackend.conf',
      require => [group['root'], Class['hosts'], file['-/etc/polkit-1/nullbackend.conf.d'], user['root']];
    '/etc/portreserve/cups':
      checksum => 'md5',
      content => template('pysa_ipa/etc/portreserve/cups'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/portreserve/cups',
      require => [group['root'], Class['hosts'], file['-/etc/portreserve'], user['root']];
    '/etc/postfix/access':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/access'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/access',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/canonical':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/canonical'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/canonical',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/generic':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/generic'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/generic',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/header_checks':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/header_checks'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/header_checks',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/main.cf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/main.cf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/main.cf',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/master.cf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/master.cf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/master.cf',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/relocated':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/relocated'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/relocated',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/transport':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/transport'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/transport',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/postfix/virtual':
      checksum => 'md5',
      content => template('pysa_ipa/etc/postfix/virtual'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/postfix/virtual',
      require => [group['root'], Class['hosts'], file['-/etc/postfix'], user['root']];
    '/etc/ppp/chap-secrets':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/chap-secrets'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ppp/chap-secrets',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/ip-down':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/ip-down'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ppp/ip-down',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/ip-down.ipv6to4':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/ip-down.ipv6to4'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ppp/ip-down.ipv6to4',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/ip-up':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/ip-up'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ppp/ip-up',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/ip-up.ipv6to4':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/ip-up.ipv6to4'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ppp/ip-up.ipv6to4',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/ipv6-down':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/ipv6-down'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ppp/ipv6-down',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/ipv6-up':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/ipv6-up'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ppp/ipv6-up',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/options':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/options'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ppp/options',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/ppp/pap-secrets':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ppp/pap-secrets'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ppp/pap-secrets',
      require => [group['root'], Class['hosts'], file['-/etc/ppp'], user['root']];
    '/etc/prelink.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/prelink.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/prelink.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['prelink']];
    '/etc/prelink.conf.d/openswan-fips.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/prelink.conf.d/openswan-fips.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/prelink.conf.d/openswan-fips.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/prelink.conf.d'], package['openswan']];
    '/etc/printcap':
      checksum => 'md5',
      content => template('pysa_ipa/etc/printcap'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/printcap',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/profile':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/profile.d/colorls.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/colorls.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/colorls.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/colorls.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/colorls.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/colorls.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/cvs.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/cvs.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/cvs.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/cvs.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/cvs.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/cvs.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/glib2.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/glib2.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/glib2.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/glib2.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/glib2.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/glib2.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/gnome-ssh-askpass.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/gnome-ssh-askpass.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/gnome-ssh-askpass.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/gnome-ssh-askpass.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/gnome-ssh-askpass.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/gnome-ssh-askpass.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/kde.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/kde.csh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/profile.d/kde.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/kde.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/kde.sh'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/profile.d/kde.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/lang.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/lang.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/lang.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/lang.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/lang.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/lang.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/less.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/less.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/less.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/less.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/less.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/less.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/qt.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/qt.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/qt.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/qt.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/qt.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/qt.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/udisks-bash-completion.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/udisks-bash-completion.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/udisks-bash-completion.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/vim.csh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/vim.csh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/vim.csh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/vim.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/vim.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/vim.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/profile.d/which2.sh':
      checksum => 'md5',
      content => template('pysa_ipa/etc/profile.d/which2.sh'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/profile.d/which2.sh',
      require => [group['root'], Class['hosts'], file['-/etc/profile.d'], user['root']];
    '/etc/protocols':
      checksum => 'md5',
      content => template('pysa_ipa/etc/protocols'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/protocols',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/pulse/client.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pulse/client.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pulse/client.conf',
      require => [group['root'], Class['hosts'], file['-/etc/pulse'], user['root']];
    '/etc/pulse/daemon.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pulse/daemon.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pulse/daemon.conf',
      require => [group['root'], Class['hosts'], file['-/etc/pulse'], user['root']];
    '/etc/pulse/default.pa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pulse/default.pa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pulse/default.pa',
      require => [group['root'], Class['hosts'], file['-/etc/pulse'], user['root']];
    '/etc/pulse/system.pa':
      checksum => 'md5',
      content => template('pysa_ipa/etc/pulse/system.pa'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/pulse/system.pa',
      require => [group['root'], Class['hosts'], file['-/etc/pulse'], user['root']];
    '/etc/puppet/auth.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/puppet/auth.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/puppet/auth.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/puppet'], package['puppet']];
    '/etc/puppet/puppet.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/puppet/puppet.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/puppet/puppet.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/puppet'], package['puppet']];
    '/etc/purple/prefs.xml':
      checksum => 'md5',
      content => template('pysa_ipa/etc/purple/prefs.xml'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/purple/prefs.xml',
      require => [group['root'], Class['hosts'], file['-/etc/purple'], user['root']];
    '/etc/quotagrpadmins':
      checksum => 'md5',
      content => template('pysa_ipa/etc/quotagrpadmins'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/quotagrpadmins',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/quotatab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/quotatab'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/quotatab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/rc.d/init.d/NetworkManager':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/NetworkManager'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/NetworkManager',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/abrt-ccpp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/abrt-ccpp'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/abrt-ccpp',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/abrt-oops':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/abrt-oops'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/abrt-oops',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/abrtd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/abrtd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/abrtd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/acpid':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/acpid'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/acpid',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/atd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/atd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/atd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/auditd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/auditd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/auditd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/autofs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/autofs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/autofs',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/blk-availability':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/blk-availability'),
      group => 'root',
      mode => '0555',
      owner => 'root',
      path => '/etc/rc.d/init.d/blk-availability',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/bluetooth':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/bluetooth'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/bluetooth',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/certmonger':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/certmonger'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/certmonger',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/cgconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/cgconfig'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/cgconfig',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/cgred':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/cgred'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/cgred',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/cpuspeed':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/cpuspeed'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/cpuspeed',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/crond':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/crond'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/crond',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/cups':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/cups'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/cups',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/dnsmasq':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/dnsmasq'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/dnsmasq',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/drbd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/drbd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/drbd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/fcoe':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/fcoe'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/fcoe',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/firstboot':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/firstboot'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/firstboot',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/functions':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/functions'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rc.d/init.d/functions',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/haldaemon':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/haldaemon'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/haldaemon',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/halt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/halt'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/halt',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/haproxy':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/haproxy'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/haproxy',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/hsqldb':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/hsqldb'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/hsqldb',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/htcacheclean':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/htcacheclean'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/htcacheclean',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/httpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/httpd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/httpd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/ip6tables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/ip6tables'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/ip6tables',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/ipsec':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/ipsec'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/ipsec',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/iptables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/iptables'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/iptables',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/irqbalance':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/irqbalance'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/irqbalance',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/iscsi':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/iscsi'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/iscsi',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/iscsid':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/iscsid'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/iscsid',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/kdump':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/kdump'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/kdump',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/killall':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/killall'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/killall',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/livesys':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/livesys'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/livesys',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/livesys-late':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/livesys-late'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/livesys-late',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/lldpad':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/lldpad'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/lldpad',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/lvm2-lvmetad':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/lvm2-lvmetad'),
      group => 'root',
      mode => '0555',
      owner => 'root',
      path => '/etc/rc.d/init.d/lvm2-lvmetad',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/lvm2-monitor':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/lvm2-monitor'),
      group => 'root',
      mode => '0555',
      owner => 'root',
      path => '/etc/rc.d/init.d/lvm2-monitor',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/mdmonitor':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/mdmonitor'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/mdmonitor',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/messagebus':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/messagebus'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/messagebus',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/multipathd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/multipathd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/multipathd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/mysqld':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/mysqld'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/mysqld',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/netconsole':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/netconsole'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/netconsole',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/netfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/netfs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/netfs',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/network':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/network'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/network',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/nfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/nfs'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/nfs',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/nfslock':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/nfslock'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/nfslock',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/nscd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/nscd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/nscd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/nslcd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/nslcd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/nslcd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/ntpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/ntpd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/ntpd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/ntpdate':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/ntpdate'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/ntpdate',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/nxserver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/nxserver'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/nxserver',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/oddjobd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/oddjobd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/oddjobd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/openct':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/openct'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/openct',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/pcscd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/pcscd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/pcscd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/portreserve':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/portreserve'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/portreserve',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/postfix':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/postfix'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/postfix',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/psacct':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/psacct'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/psacct',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/puppet':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/puppet'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/puppet',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/quota_nld':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/quota_nld'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/quota_nld',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rdisc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rdisc'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rdisc',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/restorecond':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/restorecond'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/restorecond',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rngd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rngd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rngd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rpcbind':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rpcbind'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rpcbind',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rpcgssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rpcgssd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rpcgssd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rpcidmapd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rpcidmapd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rpcidmapd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rpcsvcgssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rpcsvcgssd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rpcsvcgssd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/rsyslog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/rsyslog'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/rsyslog',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/sandbox':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/sandbox'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/sandbox',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/saslauthd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/saslauthd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/saslauthd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/single':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/single'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/single',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/smartd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/smartd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/smartd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/snmpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/snmpd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/snmpd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/snmptrapd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/snmptrapd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/snmptrapd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/spice-vdagentd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/spice-vdagentd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/spice-vdagentd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/sshd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/sshd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/sshd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/sssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/sssd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/sssd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/stinit':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/stinit'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/stinit',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/sysstat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/sysstat'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/sysstat',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/udev-post':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/udev-post'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/udev-post',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/vboxadd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/vboxadd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/vboxadd',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/vboxadd-service':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/vboxadd-service'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/vboxadd-service',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/vboxadd-x11':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/vboxadd-x11'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/vboxadd-x11',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/vncserver':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/vncserver'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/vncserver',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/wdaemon':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/wdaemon'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/wdaemon',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/wpa_supplicant':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/wpa_supplicant'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/wpa_supplicant',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/init.d/ypbind':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/init.d/ypbind'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/init.d/ypbind',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d/init.d'], user['root']];
    '/etc/rc.d/rc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/rc'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/rc',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d'], user['root']];
    '/etc/rc.d/rc.local':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/rc.local'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/rc.local',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d'], user['root']];
    '/etc/rc.d/rc.sysinit':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rc.d/rc.sysinit'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/rc.d/rc.sysinit',
      require => [group['root'], Class['hosts'], file['-/etc/rc.d'], user['root']];
    '/etc/readahead.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/readahead.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/readahead.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['readahead']];
    '/etc/reader.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/reader.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/reader.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['pcsc-lite']];
    '/etc/reader.conf.d/README':
      checksum => 'md5',
      content => template('pysa_ipa/etc/reader.conf.d/README'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/reader.conf.d/README',
      require => [group['root'], Class['hosts'], file['-/etc/reader.conf.d'], user['root']];
    '/etc/reader.conf.d/openct.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/reader.conf.d/openct.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/reader.conf.d/openct.conf',
      require => [group['root'], Class['hosts'], file['-/etc/reader.conf.d'], user['root']];
    '/etc/redhat-lsb/lsb_killproc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/redhat-lsb/lsb_killproc'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/redhat-lsb/lsb_killproc',
      require => [group['root'], Class['hosts'], file['-/etc/redhat-lsb'], user['root']];
    '/etc/redhat-lsb/lsb_log_message':
      checksum => 'md5',
      content => template('pysa_ipa/etc/redhat-lsb/lsb_log_message'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/redhat-lsb/lsb_log_message',
      require => [group['root'], Class['hosts'], file['-/etc/redhat-lsb'], user['root']];
    '/etc/redhat-lsb/lsb_pidofproc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/redhat-lsb/lsb_pidofproc'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/redhat-lsb/lsb_pidofproc',
      require => [group['root'], Class['hosts'], file['-/etc/redhat-lsb'], user['root']];
    '/etc/redhat-lsb/lsb_start_daemon':
      checksum => 'md5',
      content => template('pysa_ipa/etc/redhat-lsb/lsb_start_daemon'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/redhat-lsb/lsb_start_daemon',
      require => [group['root'], Class['hosts'], file['-/etc/redhat-lsb'], user['root']];
    '/etc/request-key.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/request-key.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/request-key.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['keyutils']];
    '/etc/request-key.d/id_resolver.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/request-key.d/id_resolver.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/request-key.d/id_resolver.conf',
      require => [group['root'], Class['hosts'], file['-/etc/request-key.d'], user['root']];
    '/etc/resolv.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/resolv.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/resolv.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/rpc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/rpm/macros.dist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.dist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.dist',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.ghc-srpm':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.ghc-srpm'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.ghc-srpm',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.imgcreate':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.imgcreate',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.jpackage':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.jpackage'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.jpackage',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.kde4':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.kde4'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.kde4',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.pear':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.pear'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.pear',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.perl':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.perl'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.perl',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.php':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.php'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.php',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rpm/macros.prelink':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rpm/macros.prelink'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rpm/macros.prelink',
      require => [group['root'], Class['hosts'], file['-/etc/rpm'], user['root']];
    '/etc/rsyslog.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rsyslog.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rsyslog.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/rwtab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rwtab'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rwtab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/rwtab.d/sssd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/rwtab.d/sssd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/rwtab.d/sssd',
      require => [group['root'], Class['hosts'], file['-/etc/rwtab.d'], user['root']];
    '/etc/samba/smb.conf.rpmsave':
      checksum => 'md5',
      content => template('pysa_ipa/etc/samba/smb.conf.rpmsave'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/samba/smb.conf.rpmsave',
      require => [group['root'], Class['hosts'], file['-/etc/samba'], user['root']];
    '/etc/sane.d/abaton.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/abaton.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/abaton.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/agfafocus.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/agfafocus.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/agfafocus.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/apple.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/apple.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/apple.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/artec.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/artec.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/artec.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/artec_eplus48u.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/artec_eplus48u.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/artec_eplus48u.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/avision.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/avision.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/avision.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/bh.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/bh.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/bh.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/canon.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/canon.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/canon.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/canon630u.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/canon630u.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/canon630u.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/canon_dr.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/canon_dr.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/canon_dr.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/canon_pp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/canon_pp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/canon_pp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/cardscan.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/cardscan.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/cardscan.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/coolscan.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/coolscan.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/coolscan.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/coolscan2.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/coolscan2.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/coolscan2.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/coolscan3.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/coolscan3.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/coolscan3.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/dc210.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dc210.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dc210.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/dc240.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dc240.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dc240.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/dc25.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dc25.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dc25.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/dell1600n_net.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dell1600n_net.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dell1600n_net.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/dll.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dll.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dll.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/dll.d/hpaio':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dll.d/hpaio'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dll.d/hpaio',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d/dll.d'], user['root']];
    '/etc/sane.d/dmc.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/dmc.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/dmc.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/epjitsu.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/epjitsu.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/epjitsu.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/epson.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/epson.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/epson.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/epson2.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/epson2.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/epson2.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/fujitsu.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/fujitsu.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/fujitsu.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/genesys.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/genesys.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/genesys.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/gphoto2.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/gphoto2.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/gphoto2.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/gt68xx.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/gt68xx.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/gt68xx.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/hp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/hp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/hp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/hp3900.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/hp3900.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/hp3900.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/hp4200.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/hp4200.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/hp4200.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/hp5400.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/hp5400.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/hp5400.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/hpsj5s.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/hpsj5s.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/hpsj5s.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/hs2p.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/hs2p.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/hs2p.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/ibm.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/ibm.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/ibm.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/kodak.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/kodak.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/kodak.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/leo.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/leo.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/leo.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/lexmark.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/lexmark.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/lexmark.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/ma1509.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/ma1509.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/ma1509.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/matsushita.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/matsushita.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/matsushita.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/microtek.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/microtek.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/microtek.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/microtek2.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/microtek2.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/microtek2.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/mustek.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/mustek.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/mustek.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/mustek_pp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/mustek_pp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/mustek_pp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/mustek_usb.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/mustek_usb.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/mustek_usb.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/nec.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/nec.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/nec.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/net.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/net.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/net.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/p5.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/p5.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/p5.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/pie.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/pie.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/pie.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/pixma.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/pixma.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/pixma.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/plustek.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/plustek.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/plustek.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/plustek_pp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/plustek_pp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/plustek_pp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/qcam.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/qcam.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/qcam.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/ricoh.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/ricoh.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/ricoh.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/rts8891.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/rts8891.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/rts8891.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/s9036.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/s9036.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/s9036.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/saned.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/saned.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/saned.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/sceptre.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/sceptre.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/sceptre.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/sharp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/sharp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/sharp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/sm3840.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/sm3840.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/sm3840.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/snapscan.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/snapscan.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/snapscan.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/sp15c.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/sp15c.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/sp15c.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/st400.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/st400.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/st400.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/stv680.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/stv680.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/stv680.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/tamarack.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/tamarack.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/tamarack.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/teco1.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/teco1.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/teco1.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/teco2.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/teco2.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/teco2.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/teco3.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/teco3.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/teco3.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/test.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/test.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/test.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/u12.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/u12.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/u12.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/umax.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/umax.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/umax.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/umax1220u.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/umax1220u.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/umax1220u.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/umax_pp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/umax_pp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/umax_pp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/v4l.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/v4l.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/v4l.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sane.d/xerox_mfp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sane.d/xerox_mfp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sane.d/xerox_mfp.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sane.d'], user['root']];
    '/etc/sasl2/smtpd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sasl2/smtpd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sasl2/smtpd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sasl2'], user['root']];
    '/etc/securetty':
      checksum => 'md5',
      content => template('pysa_ipa/etc/securetty'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/securetty',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/security/access.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/access.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/access.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/chroot.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/chroot.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/chroot.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/console.apps/authconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/authconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/authconfig',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/authconfig-gtk':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/authconfig-gtk'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/authconfig-gtk',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/authconfig-tui':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/authconfig-tui'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/authconfig-tui',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/config-util':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/config-util'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/config-util',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/eject':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/eject'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/eject',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/halt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/halt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/halt',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/kppp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/kppp'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/kppp',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/liveinst':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/liveinst'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/liveinst',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/poweroff':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/poweroff'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/poweroff',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/reboot':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/reboot'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/reboot',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/setup':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/setup'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/setup',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-authentication':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-authentication'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-authentication',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-date':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-date'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-date',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-kdump':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-kdump'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-kdump',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-keyboard':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-keyboard'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-keyboard',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-network':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-network'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-network',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-network-cmd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-network-cmd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-network-cmd',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/system-config-users':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/system-config-users'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/system-config-users',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/wireshark':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.apps/wireshark'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/wireshark',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.apps/xserver':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.apps/xserver',
      require => [group['root'], Class['hosts'], file['-/etc/security/console.apps'], user['root']];
    '/etc/security/console.handlers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.handlers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.handlers',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/console.perms':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/console.perms'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/console.perms',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/group.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/group.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/group.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/limits.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/limits.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/limits.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/limits.d/90-nproc.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/limits.d/90-nproc.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/limits.d/90-nproc.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security/limits.d'], user['root']];
    '/etc/security/namespace.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/namespace.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/namespace.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/namespace.init':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/namespace.init'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/security/namespace.init',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/opasswd':
      checksum => 'md5',
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/security/opasswd',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/pam_env.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/pam_env.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/pam_env.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/sepermit.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/sepermit.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/sepermit.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/security/time.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/security/time.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/security/time.conf',
      require => [group['root'], Class['hosts'], file['-/etc/security'], user['root']];
    '/etc/selinux/config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/config'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/config',
      require => [group['root'], Class['hosts'], file['-/etc/selinux'], user['root']];
    '/etc/selinux/restorecond.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/restorecond.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/restorecond.conf',
      require => [group['root'], Class['hosts'], file['-/etc/selinux'], user['root']];
    '/etc/selinux/restorecond_user.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/restorecond_user.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/restorecond_user.conf',
      require => [group['root'], Class['hosts'], file['-/etc/selinux'], user['root']];
    '/etc/selinux/semanage.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/semanage.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/semanage.conf',
      require => [group['root'], Class['hosts'], file['-/etc/selinux'], user['root']];
    '/etc/selinux/targeted/contexts/customizable_types':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/customizable_types'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/customizable_types',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/dbus_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/dbus_contexts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/dbus_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/default_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/default_contexts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/default_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/default_type':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/default_type'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/default_type',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/failsafe_context':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/failsafe_context'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/failsafe_context',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/files/file_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/files/file_contexts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/files/file_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/files'], user['root']];
    '/etc/selinux/targeted/contexts/files/file_contexts.homedirs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/files/file_contexts.homedirs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/files/file_contexts.homedirs',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/files'], user['root']];
    '/etc/selinux/targeted/contexts/files/media':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/files/media'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/files/media',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/files'], user['root']];
    '/etc/selinux/targeted/contexts/initrc_context':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/initrc_context'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/initrc_context',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/netfilter_contexts':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/netfilter_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/removable_context':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/removable_context'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/removable_context',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/securetty_types':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/securetty_types'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/securetty_types',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/sepgsql_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/sepgsql_contexts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/sepgsql_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/userhelper_context':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/userhelper_context'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/userhelper_context',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/users/guest_u':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/users/guest_u'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users/guest_u',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/users'], user['root']];
    '/etc/selinux/targeted/contexts/users/root':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/users/root'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users/root',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/users'], user['root']];
    '/etc/selinux/targeted/contexts/users/staff_u':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/users/staff_u'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users/staff_u',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/users'], user['root']];
    '/etc/selinux/targeted/contexts/users/unconfined_u':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/users/unconfined_u'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users/unconfined_u',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/users'], user['root']];
    '/etc/selinux/targeted/contexts/users/user_u':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/users/user_u'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users/user_u',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/users'], user['root']];
    '/etc/selinux/targeted/contexts/users/xguest_u':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/users/xguest_u'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users/xguest_u',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts/users'], user['root']];
    '/etc/selinux/targeted/contexts/virtual_domain_context':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/virtual_domain_context'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/virtual_domain_context',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/virtual_image_context':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/virtual_image_context'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/virtual_image_context',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/contexts/x_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/contexts/x_contexts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/x_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/contexts'], user['root']];
    '/etc/selinux/targeted/modules/active/file_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/file_contexts'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/file_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/file_contexts.homedirs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/file_contexts.homedirs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/file_contexts.homedirs',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/file_contexts.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/file_contexts.template'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/file_contexts.template',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/homedir_template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/homedir_template'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/homedir_template',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/netfilter_contexts':
      checksum => 'md5',
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/netfilter_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/seusers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/seusers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/seusers',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/seusers.final':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/seusers.final'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/seusers.final',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/active/users_extra':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/active/users_extra'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active/users_extra',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/active'], user['root']];
    '/etc/selinux/targeted/modules/semanage.read.LOCK':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/semanage.read.LOCK',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules'], user['root']];
    '/etc/selinux/targeted/modules/semanage.trans.LOCK':
      checksum => 'md5',
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/semanage.trans.LOCK',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules'], user['root']];
    '/etc/selinux/targeted/modules/tmp/file_contexts':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/file_contexts'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/file_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/file_contexts.homedirs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/file_contexts.homedirs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/file_contexts.homedirs',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/file_contexts.template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/file_contexts.template'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/file_contexts.template',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/homedir_template':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/homedir_template'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/homedir_template',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/netfilter_contexts':
      checksum => 'md5',
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/netfilter_contexts',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/seusers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/seusers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/seusers',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/seusers.final':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/seusers.final'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/seusers.final',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/modules/tmp/users_extra':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/modules/tmp/users_extra'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp/users_extra',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted/modules/tmp'], user['root']];
    '/etc/selinux/targeted/setrans.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/setrans.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/setrans.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/selinux/targeted'], package['selinux-policy-targeted']];
    '/etc/selinux/targeted/seusers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/selinux/targeted/seusers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/selinux/targeted/seusers',
      require => [group['root'], Class['hosts'], file['-/etc/selinux/targeted'], user['root']];
    '/etc/services':
      checksum => 'md5',
      content => template('pysa_ipa/etc/services'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/services',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/sestatus.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sestatus.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sestatus.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/setuptool.d/98netconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/98netconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/98netconfig',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/98system-config-authentication':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/98system-config-authentication'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/98system-config-authentication',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/98system-config-display':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/98system-config-display'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/98system-config-display',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/98system-config-keyboard':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/98system-config-keyboard'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/98system-config-keyboard',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99Xconfigurator':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99Xconfigurator'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99Xconfigurator',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99authconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99authconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99authconfig',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99kbdconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99kbdconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99kbdconfig',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99mouseconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99mouseconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99mouseconfig',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99ntsysv':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99ntsysv'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99ntsysv',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99printconf-tui':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99printconf-tui'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99printconf-tui',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99sndconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99sndconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99sndconfig',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99system-config-firewall-tui':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99system-config-firewall-tui'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99system-config-firewall-tui',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99system-config-network-tui':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99system-config-network-tui'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99system-config-network-tui',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/setuptool.d/99timeconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/setuptool.d/99timeconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/setuptool.d/99timeconfig',
      require => [group['root'], Class['hosts'], file['-/etc/setuptool.d'], user['root']];
    '/etc/sgml/catalog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/catalog'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/catalog',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/docbook/xmlcatalog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/docbook/xmlcatalog'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/docbook/xmlcatalog',
      require => [group['root'], Class['hosts'], file['-/etc/sgml/docbook'], user['root']];
    '/etc/sgml/sgml-docbook-3.0-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-3.0-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-3.0-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-3.1-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-3.1-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-3.1-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-4.0-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-4.0-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-4.0-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-4.1-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-4.1-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-4.1-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-4.2-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-4.2-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-4.2-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-4.3-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-4.3-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-4.3-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-4.4-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-4.4-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-4.4-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml-docbook-4.5-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml-docbook-4.5-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml-docbook-4.5-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/sgml.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/sgml.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/sgml.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/xml-docbook-4.1.2-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/xml-docbook-4.1.2-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/xml-docbook-4.1.2-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/xml-docbook-4.2-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/xml-docbook-4.2-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/xml-docbook-4.2-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/xml-docbook-4.3-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/xml-docbook-4.3-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/xml-docbook-4.3-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/xml-docbook-4.4-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/xml-docbook-4.4-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/xml-docbook-4.4-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/sgml/xml-docbook-4.5-1.0-51.el6.cat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sgml/xml-docbook-4.5-1.0-51.el6.cat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sgml/xml-docbook-4.5-1.0-51.el6.cat',
      require => [group['root'], Class['hosts'], file['-/etc/sgml'], user['root']];
    '/etc/shells':
      checksum => 'md5',
      content => template('pysa_ipa/etc/shells'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/shells',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/skel/.bash_logout':
      checksum => 'md5',
      content => template('pysa_ipa/etc/skel/.bash_logout'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/skel/.bash_logout',
      require => [group['root'], Class['hosts'], file['-/etc/skel'], user['root']];
    '/etc/skel/.bash_profile':
      checksum => 'md5',
      content => template('pysa_ipa/etc/skel/.bash_profile'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/skel/.bash_profile',
      require => [group['root'], Class['hosts'], file['-/etc/skel'], user['root']];
    '/etc/skel/.bashrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/skel/.bashrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/skel/.bashrc',
      require => [group['root'], Class['hosts'], file['-/etc/skel'], user['root']];
    '/etc/smartd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/smartd.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/smartd.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['smartmontools']];
    '/etc/smi.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/smi.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/smi.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/snmp/snmpd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/snmp/snmpd.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/snmp/snmpd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/snmp'], user['root']];
    '/etc/snmp/snmptrapd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/snmp/snmptrapd.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/snmp/snmptrapd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/snmp'], user['root']];
    '/etc/sos.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sos.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sos.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/sound/events/gnome-2.soundlist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sound/events/gnome-2.soundlist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sound/events/gnome-2.soundlist',
      require => [group['root'], Class['hosts'], file['-/etc/sound/events'], user['root']];
    '/etc/sound/events/gtk-events-2.soundlist':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sound/events/gtk-events-2.soundlist'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sound/events/gtk-events-2.soundlist',
      require => [group['root'], Class['hosts'], file['-/etc/sound/events'], user['root']];
    '/etc/ssh/moduli':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/moduli'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ssh/moduli',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/ssh_config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/ssh_config'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssh/ssh_config',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/ssh_host_dsa_key':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/ssh_host_dsa_key'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ssh/ssh_host_dsa_key',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/ssh_host_dsa_key.pub':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/ssh_host_dsa_key.pub'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssh/ssh_host_dsa_key.pub',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/ssh_host_key.pub':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/ssh_host_key.pub'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssh/ssh_host_key.pub',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/ssh_host_rsa_key':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/ssh_host_rsa_key'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ssh/ssh_host_rsa_key',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/ssh_host_rsa_key.pub':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/ssh_host_rsa_key.pub'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssh/ssh_host_rsa_key.pub',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/sshd_config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/sshd_config'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ssh/sshd_config',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssh/sshd_config.rpmnew':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssh/sshd_config.rpmnew'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/ssh/sshd_config.rpmnew',
      require => [group['root'], Class['hosts'], file['-/etc/ssh'], user['root']];
    '/etc/ssl/certs/Makefile':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssl/certs/Makefile'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssl/certs/Makefile',
      require => [group['root'], Class['hosts'], file['-/etc/ssl/certs'], user['root']];
    '/etc/ssl/certs/ca-bundle.crt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssl/certs/ca-bundle.crt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssl/certs/ca-bundle.crt',
      require => [group['root'], Class['hosts'], file['-/etc/ssl/certs'], user['root']];
    '/etc/ssl/certs/ca-bundle.trust.crt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssl/certs/ca-bundle.trust.crt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/ssl/certs/ca-bundle.trust.crt',
      require => [group['root'], Class['hosts'], file['-/etc/ssl/certs'], user['root']];
    '/etc/ssl/certs/make-dummy-cert':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssl/certs/make-dummy-cert'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ssl/certs/make-dummy-cert',
      require => [group['root'], Class['hosts'], file['-/etc/ssl/certs'], user['root']];
    '/etc/ssl/certs/renew-dummy-cert':
      checksum => 'md5',
      content => template('pysa_ipa/etc/ssl/certs/renew-dummy-cert'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/ssl/certs/renew-dummy-cert',
      require => [group['root'], Class['hosts'], file['-/etc/ssl/certs'], user['root']];
    '/etc/sssd/sssd.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sssd/sssd.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sssd/sssd.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sssd'], user['root']];
    '/etc/statetab':
      checksum => 'md5',
      content => template('pysa_ipa/etc/statetab'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/statetab',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/sudo-ldap.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sudo-ldap.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/sudo-ldap.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['sudo']];
    '/etc/sudo.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sudo.conf'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/sudo.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['sudo']];
    '/etc/sudoers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sudoers'),
      group => 'root',
      mode => '0440',
      owner => 'root',
      path => '/etc/sudoers',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/sysconfig/atd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/atd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/atd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/auditd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/auditd'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/sysconfig/auditd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/authconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/authconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/authconfig',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/autofs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/autofs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/autofs',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/cbq/avpkt':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/cbq/avpkt'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/cbq/avpkt',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/cbq'], user['root']];
    '/etc/sysconfig/cbq/cbq-0000.example':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/cbq/cbq-0000.example'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/cbq/cbq-0000.example',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/cbq'], user['root']];
    '/etc/sysconfig/cgconfig':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/cgconfig'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/cgconfig',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/cgred.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/cgred.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/cgred.conf',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/clock':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/clock'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/clock',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/cpuspeed':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/cpuspeed'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/cpuspeed',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/crond':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/crond'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/crond',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/firstboot':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/firstboot'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/firstboot',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/grub':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/grub'),
      group => 'root',
      mode => '0664',
      owner => 'root',
      path => '/etc/sysconfig/grub',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/hsqldb':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/hsqldb'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/hsqldb',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/htcacheclean':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/htcacheclean'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/htcacheclean',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/httpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/httpd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/httpd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/i18n':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/i18n'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/i18n',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/init':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/init'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/init',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/ip6tables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/ip6tables'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/ip6tables',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/ip6tables-config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/ip6tables-config'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/ip6tables-config',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/ip6tables.old':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/ip6tables.old'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/ip6tables.old',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/iptables':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/iptables'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/iptables',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/iptables-config':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/iptables-config'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/iptables-config',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/iptables.old':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/iptables.old'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/iptables.old',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/irqbalance':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/irqbalance'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/irqbalance',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/kdump':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/kdump'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/kdump',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/kernel':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/kernel'),
      group => 'root',
      mode => '0664',
      owner => 'root',
      path => '/etc/sysconfig/kernel',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/keyboard':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/keyboard'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/keyboard',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/modules/bluez-uinput.modules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/modules/bluez-uinput.modules'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/modules/bluez-uinput.modules',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/modules'], user['root']];
    '/etc/sysconfig/netconsole':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/netconsole'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/netconsole',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/network':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/network',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/network-scripts/ifcfg-Auto_eth3':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifcfg-Auto_eth3'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifcfg-Auto_eth3',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifcfg-lo':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifcfg-lo'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifcfg-lo',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-bnep':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-bnep'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-bnep',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-eth':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-eth'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-eth',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-ippp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-ippp'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-ippp',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-ipv6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-ipv6'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-ipv6',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-post':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-post'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-post',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-ppp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-ppp'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-ppp',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-routes':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-routes'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-routes',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-sit':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-sit'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-sit',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifdown-tunnel':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifdown-tunnel'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifdown-tunnel',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-aliases':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-aliases'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-aliases',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-bnep':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-bnep'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-bnep',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-eth':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-eth'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-eth',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-ippp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-ippp'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-ippp',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-ipv6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-ipv6'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-ipv6',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-plip':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-plip'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-plip',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-plusb':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-plusb'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-plusb',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-post':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-post'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-post',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-ppp':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-ppp'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-ppp',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-routes':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-routes'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-routes',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-sit':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-sit'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-sit',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-tunnel':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-tunnel'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-tunnel',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/ifup-wireless':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/ifup-wireless'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/ifup-wireless',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/init.ipv6-global':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/init.ipv6-global'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/init.ipv6-global',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/net.hotplug':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/net.hotplug'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/net.hotplug',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/network-functions':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/network-functions'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/network-functions',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/network-scripts/network-functions-ipv6':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/network-scripts/network-functions-ipv6'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts/network-functions-ipv6',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig/network-scripts'], user['root']];
    '/etc/sysconfig/nfs':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/nfs'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/nfs',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/nspluginwrapper':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/nspluginwrapper'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/nspluginwrapper',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/ntpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/ntpd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/ntpd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/ntpdate':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/ntpdate'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/ntpdate',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/openct':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/openct'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/openct',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/prelink':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/prelink'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/prelink',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/puppet':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/puppet'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/puppet',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/quota_nld':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/quota_nld'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/quota_nld',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/raid-check':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/raid-check'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/raid-check',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/readahead':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/readahead'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/readahead',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/readonly-root':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/readonly-root'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/readonly-root',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/rngd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/rngd'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/sysconfig/rngd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/rsyslog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/rsyslog'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/rsyslog',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/sandbox':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/sandbox'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/sandbox',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/saslauthd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/saslauthd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/saslauthd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/smartmontools':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/smartmontools'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/smartmontools',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/snmpd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/snmpd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/snmpd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/snmptrapd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/snmptrapd'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/snmptrapd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/sshd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/sshd'),
      group => 'root',
      mode => '0640',
      owner => 'root',
      path => '/etc/sysconfig/sshd',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/sysstat':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/sysstat'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/sysstat',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/sysstat.ioconf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/sysstat.ioconf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/sysstat.ioconf',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/system-config-firewall':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/system-config-firewall'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/system-config-firewall',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/system-config-firewall.old':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/system-config-firewall.old'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/sysconfig/system-config-firewall.old',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/system-config-users':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/system-config-users'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/system-config-users',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/udev':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/udev'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/udev',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/vncservers':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/vncservers'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/vncservers',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysconfig/wpa_supplicant':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysconfig/wpa_supplicant'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysconfig/wpa_supplicant',
      require => [group['root'], Class['hosts'], file['-/etc/sysconfig'], user['root']];
    '/etc/sysctl.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/sysctl.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/sysctl.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/system-release-cpe':
      checksum => 'md5',
      content => template('pysa_ipa/etc/system-release-cpe'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/system-release-cpe',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/udev/rules.d/60-fprint-autosuspend.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/60-fprint-autosuspend.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/60-fprint-autosuspend.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/60-openct.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/60-openct.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/60-openct.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/60-pcmcia.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/60-pcmcia.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/60-pcmcia.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/60-raw.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/60-raw.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/60-raw.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/60-vboxadd.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/60-vboxadd.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/60-vboxadd.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/65-drbd.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/65-drbd.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/65-drbd.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/70-persistent-cd.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/70-persistent-cd.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/70-persistent-cd.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/70-persistent-net.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/70-persistent-net.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/70-persistent-net.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/90-alsa.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/90-alsa.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/90-alsa.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/90-hal.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/90-hal.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/90-hal.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/97-bluetooth-serial.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/97-bluetooth-serial.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/97-bluetooth-serial.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/98-kexec.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/98-kexec.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/98-kexec.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/rules.d/99-fuse.rules':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/rules.d/99-fuse.rules'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/rules.d/99-fuse.rules',
      require => [group['root'], Class['hosts'], file['-/etc/udev/rules.d'], user['root']];
    '/etc/udev/udev.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/udev/udev.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/udev/udev.conf',
      require => [group['root'], Class['hosts'], file['-/etc/udev'], user['root']];
    '/etc/updatedb.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/updatedb.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/updatedb.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['mlocate']];
    '/etc/vimrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/vimrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/vimrc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/virc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/virc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/virc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/warnquota.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/warnquota.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/warnquota.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc'], package['quota']];
    '/etc/wgetrc':
      checksum => 'md5',
      content => template('pysa_ipa/etc/wgetrc'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/wgetrc',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/wpa_supplicant/wpa_supplicant.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/wpa_supplicant/wpa_supplicant.conf'),
      group => 'root',
      mode => '0600',
      owner => 'root',
      path => '/etc/wpa_supplicant/wpa_supplicant.conf',
      require => [group['root'], Class['hosts'], file['-/etc/wpa_supplicant'], user['root']];
    '/etc/xdg/autostart/at-spi-registryd.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/at-spi-registryd.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/at-spi-registryd.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/bluetooth-applet.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/bluetooth-applet.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/bluetooth-applet.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/evolution-alarm-notify.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/evolution-alarm-notify.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/evolution-alarm-notify.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gdu-notification-daemon.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gdu-notification-daemon.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gdu-notification-daemon.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-at-session.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-at-session.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-at-session.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-keyring-daemon.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-keyring-daemon.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-keyring-daemon.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-power-manager.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-power-manager.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-power-manager.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-screensaver.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-screensaver.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-screensaver.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-settings-daemon-helper.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-settings-daemon-helper.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-settings-daemon-helper.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-settings-daemon.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-settings-daemon.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-settings-daemon.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gnome-volume-control-applet.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gnome-volume-control-applet.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gnome-volume-control-applet.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/gpk-update-icon.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/gpk-update-icon.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/gpk-update-icon.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/imsettings-start.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/imsettings-start.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/imsettings-start.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/nm-applet.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/nm-applet.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/nm-applet.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/polkit-gnome-authentication-agent-1.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/pulseaudio.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/pulseaudio.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/pulseaudio.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/restorecond.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/restorecond.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/restorecond.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/seahorse-daemon.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/seahorse-daemon.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/seahorse-daemon.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/spice-vdagent.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/spice-vdagent.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/spice-vdagent.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/user-dirs-update-gtk.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/user-dirs-update-gtk.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/user-dirs-update-gtk.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/vboxclient.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/vboxclient.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/vboxclient.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/autostart/vino-server.desktop':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/autostart/vino-server.desktop'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/autostart/vino-server.desktop',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/autostart'], user['root']];
    '/etc/xdg/menus/applications-merged/NoMachine-dir.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/applications-merged/NoMachine-dir.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/applications-merged/NoMachine-dir.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus/applications-merged'], user['root']];
    '/etc/xdg/menus/applications.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/applications.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/applications.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/documentation.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/documentation.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/documentation.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/gnome-screensavers.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/gnome-screensavers.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/gnome-screensavers.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/gnomecc.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/gnomecc.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/gnomecc.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/kde4-applications.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/kde4-applications.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/kde4-applications.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/preferences-post-merged/gnome-screensaver-hide-xscreensaver.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/preferences-post-merged/gnome-screensaver-hide-xscreensaver.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/preferences-post-merged/gnome-screensaver-hide-xscreensaver.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus/preferences-post-merged'], user['root']];
    '/etc/xdg/menus/preferences.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/preferences.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/preferences.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/server-settings.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/server-settings.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/server-settings.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/settings.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/settings.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/settings.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/start-here.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/start-here.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/start-here.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/menus/system-settings.menu':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/menus/system-settings.menu'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/menus/system-settings.menu',
      require => [group['root'], Class['hosts'], file['-/etc/xdg/menus'], user['root']];
    '/etc/xdg/user-dirs.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/user-dirs.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/user-dirs.conf',
      require => [group['root'], Class['hosts'], file['-/etc/xdg'], user['root']];
    '/etc/xdg/user-dirs.defaults':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xdg/user-dirs.defaults'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xdg/user-dirs.defaults',
      require => [group['root'], Class['hosts'], file['-/etc/xdg'], user['root']];
    '/etc/xen/scripts/block-drbd':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xen/scripts/block-drbd'),
      group => 'root',
      mode => '0755',
      owner => 'root',
      path => '/etc/xen/scripts/block-drbd',
      require => [group['root'], Class['hosts'], file['-/etc/xen/scripts'], user['root']];
    '/etc/xinetd.d/rsync':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xinetd.d/rsync'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xinetd.d/rsync',
      require => [group['root'], Class['hosts'], file['-/etc/xinetd.d'], user['root']];
    '/etc/xml/catalog':
      checksum => 'md5',
      content => template('pysa_ipa/etc/xml/catalog'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/xml/catalog',
      require => [group['root'], Class['hosts'], file['-/etc/xml'], user['root']];
    '/etc/yp.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yp.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yp.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/yum.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum.conf',
      require => [group['root'], Class['hosts'], file['-/etc'], user['root']];
    '/etc/yum/pluginconf.d/blacklist.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum/pluginconf.d/blacklist.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum/pluginconf.d/blacklist.conf',
      require => [group['root'], Class['hosts'], file['-/etc/yum/pluginconf.d'], user['root']];
    '/etc/yum/pluginconf.d/fastestmirror.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum/pluginconf.d/fastestmirror.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum/pluginconf.d/fastestmirror.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/yum/pluginconf.d'], package['yum-plugin-fastestmirror']];
    '/etc/yum/pluginconf.d/refresh-packagekit.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum/pluginconf.d/refresh-packagekit.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum/pluginconf.d/refresh-packagekit.conf',
      require => [group['root'], Class['hosts'], file['-/etc/yum/pluginconf.d'], user['root']];
    '/etc/yum/pluginconf.d/security.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum/pluginconf.d/security.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum/pluginconf.d/security.conf',
      require => [Class['hosts'], group['root'], user['root'], file['-/etc/yum/pluginconf.d'], package['yum-plugin-security']];
    '/etc/yum/pluginconf.d/whiteout.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum/pluginconf.d/whiteout.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum/pluginconf.d/whiteout.conf',
      require => [group['root'], Class['hosts'], file['-/etc/yum/pluginconf.d'], user['root']];
    '/etc/yum/version-groups.conf':
      checksum => 'md5',
      content => template('pysa_ipa/etc/yum/version-groups.conf'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/etc/yum/version-groups.conf',
      require => [group['root'], Class['hosts'], file['-/etc/yum'], user['root']];
    '/root/.ssh/known_hosts':
      checksum => 'md5',
      content => template('pysa_ipa/root/.ssh/known_hosts'),
      group => 'root',
      mode => '0644',
      owner => 'root',
      path => '/root/.ssh/known_hosts',
      require => [group['root'], Class['hosts'], file['-/root/.ssh'], user['root']];
  }
}
include files
