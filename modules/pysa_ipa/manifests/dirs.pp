class dirs {
  file {
    '-/etc':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc',
      owner => 'root',
      path => '/etc',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ConsoleKit':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ConsoleKit',
      owner => 'root',
      path => '/etc/ConsoleKit',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ConsoleKit/seats.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ConsoleKit/seats.d',
      owner => 'root',
      path => '/etc/ConsoleKit/seats.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/NX':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/NX',
      owner => 'root',
      path => '/etc/NX',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/NX/server':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/NX/server',
      owner => 'root',
      path => '/etc/NX/server',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/NX/server/localhost':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/NX/server/localhost',
      owner => 'root',
      path => '/etc/NX/server/localhost',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/NetworkManager':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/NetworkManager',
      owner => 'root',
      path => '/etc/NetworkManager',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/NetworkManager/dispatcher.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/NetworkManager/dispatcher.d',
      owner => 'root',
      path => '/etc/NetworkManager/dispatcher.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/PackageKit':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/PackageKit',
      owner => 'root',
      path => '/etc/PackageKit',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/X11',
      owner => 'root',
      path => '/etc/X11',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/X11/fontpath.d',
      owner => 'root',
      path => '/etc/X11/fontpath.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/cjkuni-fonts-uming':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/cjkuni-fonts-uming',
      owner => 'root',
      path => '/etc/X11/fontpath.d/cjkuni-fonts-uming',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/default-ghostscript':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/default-ghostscript',
      owner => 'root',
      path => '/etc/X11/fontpath.d/default-ghostscript',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/fonts-default':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/fonts-default',
      owner => 'root',
      path => '/etc/X11/fontpath.d/fonts-default',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/liberation-fonts':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/liberation-fonts',
      owner => 'root',
      path => '/etc/X11/fontpath.d/liberation-fonts',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-100dpi:unscaled:pri=30',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/xorg-x11-fonts-Type1':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-Type1',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10',
      owner => 'root',
      path => '/etc/X11/fontpath.d/xorg-x11-fonts-misc:unscaled:pri=10',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/xdm':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/X11/xdm',
      owner => 'root',
      path => '/etc/X11/xdm',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/xinit':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/X11/xinit',
      owner => 'root',
      path => '/etc/X11/xinit',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/xinit/xinitrc.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/X11/xinit/xinitrc.d',
      owner => 'root',
      path => '/etc/X11/xinit/xinitrc.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/X11/xinit/xinput.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/X11/xinit/xinput.d',
      owner => 'root',
      path => '/etc/X11/xinit/xinput.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/abrt':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/abrt',
      owner => 'root',
      path => '/etc/abrt',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/abrt/plugins':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/abrt/plugins',
      owner => 'root',
      path => '/etc/abrt/plugins',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/acpi':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/acpi',
      owner => 'root',
      path => '/etc/acpi',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/acpi/actions':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/acpi/actions',
      owner => 'root',
      path => '/etc/acpi/actions',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/acpi/events':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/acpi/events',
      owner => 'root',
      path => '/etc/acpi/events',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alsa':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alsa',
      owner => 'root',
      path => '/etc/alsa',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives',
      owner => 'root',
      path => '/etc/alternatives',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/alternatives/jre',
      owner => 'root',
      path => '/etc/alternatives/jre',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib',
      owner => 'root',
      path => '/etc/alternatives/jre/lib',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/amd64':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/amd64',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/amd64',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/amd64/server':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/amd64/server',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/amd64/server',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/ext':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/ext',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/ext',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/images':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/images',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/images',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/images/cursors':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/images/cursors',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/images/cursors',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/management':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/management',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/management',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre/lib/security':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre/lib/security',
      owner => 'root',
      path => '/etc/alternatives/jre/lib/security',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/alternatives/jre_1.6.0',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/amd64':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/amd64',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/amd64',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/amd64/server':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/amd64/server',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/amd64/server',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/ext':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/ext',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/ext',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/images':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/images',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/images',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/images/cursors':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/images/cursors',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/images/cursors',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/management':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/management',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/management',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.6.0/lib/security':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.6.0/lib/security',
      owner => 'root',
      path => '/etc/alternatives/jre_1.6.0/lib/security',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/alternatives/jre_1.7.0',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/amd64':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/amd64',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/amd64',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/amd64/server':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/amd64/server',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/amd64/server',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/ext':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/ext',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/ext',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/images':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/images',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/images',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/images/cursors':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/images/cursors',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/images/cursors',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/management':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/management',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/management',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_1.7.0/lib/security':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_1.7.0/lib/security',
      owner => 'root',
      path => '/etc/alternatives/jre_1.7.0/lib/security',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/alternatives/jre_openjdk',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/amd64':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/amd64',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/amd64',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/amd64/server':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/amd64/server',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/amd64/server',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/ext':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/ext',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/ext',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/images':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/images',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/images',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/images/cursors':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/images/cursors',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/images/cursors',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/management':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/management',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/management',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/alternatives/jre_openjdk/lib/security':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/alternatives/jre_openjdk/lib/security',
      owner => 'root',
      path => '/etc/alternatives/jre_openjdk/lib/security',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/audisp':
      ensure => directory,
      group => 'root',
      mode => '0750',
      name => '/etc/audisp',
      owner => 'root',
      path => '/etc/audisp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/audisp/plugins.d':
      ensure => directory,
      group => 'root',
      mode => '0750',
      name => '/etc/audisp/plugins.d',
      owner => 'root',
      path => '/etc/audisp/plugins.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/audit':
      ensure => directory,
      group => 'root',
      mode => '0750',
      name => '/etc/audit',
      owner => 'root',
      path => '/etc/audit',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/avahi':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/avahi',
      owner => 'root',
      path => '/etc/avahi',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/bareos':
      ensure => directory,
      group => 'bareos',
      mode => '0770',
      name => '/etc/bareos',
      owner => 'root',
      path => '/etc/bareos',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['bareos'], Class['hosts'], user['root']];
    '-/etc/bash_completion.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/bash_completion.d',
      owner => 'root',
      path => '/etc/bash_completion.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/bluetooth':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/bluetooth',
      owner => 'root',
      path => '/etc/bluetooth',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/bonobo-activation':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/bonobo-activation',
      owner => 'root',
      path => '/etc/bonobo-activation',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/certmonger':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/certmonger',
      owner => 'root',
      path => '/etc/certmonger',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/cron.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/cron.d',
      owner => 'root',
      path => '/etc/cron.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/cron.daily':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/cron.daily',
      owner => 'root',
      path => '/etc/cron.daily',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/cron.hourly':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/cron.hourly',
      owner => 'root',
      path => '/etc/cron.hourly',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/cron.monthly':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/cron.monthly',
      owner => 'root',
      path => '/etc/cron.monthly',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/cups':
      ensure => directory,
      group => 'lp',
      mode => '0755',
      name => '/etc/cups',
      owner => 'root',
      path => '/etc/cups',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['lp'], Class['hosts'], user['root']];
    '-/etc/dbus-1':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/dbus-1',
      owner => 'root',
      path => '/etc/dbus-1',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/dbus-1/system.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/dbus-1/system.d',
      owner => 'root',
      path => '/etc/dbus-1/system.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/default':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/default',
      owner => 'root',
      path => '/etc/default',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/depmod.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/depmod.d',
      owner => 'root',
      path => '/etc/depmod.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/dhcp':
      ensure => directory,
      group => 'root',
      mode => '0750',
      name => '/etc/dhcp',
      owner => 'root',
      path => '/etc/dhcp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/dhcp/dhclient.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/dhcp/dhclient.d',
      owner => 'root',
      path => '/etc/dhcp/dhclient.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/drbd.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/drbd.d',
      owner => 'root',
      path => '/etc/drbd.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/event.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/event.d',
      owner => 'root',
      path => '/etc/event.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/facter':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/facter',
      owner => 'root',
      path => '/etc/facter',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/facter/facts.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/facter/facts.d',
      owner => 'root',
      path => '/etc/facter/facts.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/fcoe':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/fcoe',
      owner => 'root',
      path => '/etc/fcoe',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/festival':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/festival',
      owner => 'root',
      path => '/etc/festival',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/fonts':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/fonts',
      owner => 'root',
      path => '/etc/fonts',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/fonts/conf.avail':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/fonts/conf.avail',
      owner => 'root',
      path => '/etc/fonts/conf.avail',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/fonts/conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/fonts/conf.d',
      owner => 'root',
      path => '/etc/fonts/conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/foomatic':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/foomatic',
      owner => 'root',
      path => '/etc/foomatic',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gconf':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gconf',
      owner => 'root',
      path => '/etc/gconf',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gconf/2':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gconf/2',
      owner => 'root',
      path => '/etc/gconf/2',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gconf/gconf.xml.defaults':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gconf/gconf.xml.defaults',
      owner => 'root',
      path => '/etc/gconf/gconf.xml.defaults',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gconf/schemas':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gconf/schemas',
      owner => 'root',
      path => '/etc/gconf/schemas',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gdm':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gdm',
      owner => 'root',
      path => '/etc/gdm',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gdm/Init':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gdm/Init',
      owner => 'root',
      path => '/etc/gdm/Init',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gdm/PostLogin':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gdm/PostLogin',
      owner => 'root',
      path => '/etc/gdm/PostLogin',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gdm/PostSession':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gdm/PostSession',
      owner => 'root',
      path => '/etc/gdm/PostSession',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gdm/PreSession':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gdm/PreSession',
      owner => 'root',
      path => '/etc/gdm/PreSession',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ggz.modules.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ggz.modules.d',
      owner => 'root',
      path => '/etc/ggz.modules.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ghostscript':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ghostscript',
      owner => 'root',
      path => '/etc/ghostscript',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ghostscript/8.70':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ghostscript/8.70',
      owner => 'root',
      path => '/etc/ghostscript/8.70',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gimp':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gimp',
      owner => 'root',
      path => '/etc/gimp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gimp/2.0':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gimp/2.0',
      owner => 'root',
      path => '/etc/gimp/2.0',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gnome-vfs-2.0':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gnome-vfs-2.0',
      owner => 'root',
      path => '/etc/gnome-vfs-2.0',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gnome-vfs-2.0/modules':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gnome-vfs-2.0/modules',
      owner => 'root',
      path => '/etc/gnome-vfs-2.0/modules',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gtk-2.0':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gtk-2.0',
      owner => 'root',
      path => '/etc/gtk-2.0',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/gtk-2.0/x86_64-redhat-linux-gnu':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/gtk-2.0/x86_64-redhat-linux-gnu',
      owner => 'root',
      path => '/etc/gtk-2.0/x86_64-redhat-linux-gnu',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ha.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ha.d',
      owner => 'root',
      path => '/etc/ha.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ha.d/resource.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ha.d/resource.d',
      owner => 'root',
      path => '/etc/ha.d/resource.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/haproxy':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/haproxy',
      owner => 'root',
      path => '/etc/haproxy',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/hp':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/hp',
      owner => 'root',
      path => '/etc/hp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/htdig':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/htdig',
      owner => 'root',
      path => '/etc/htdig',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/httpd':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/httpd',
      owner => 'root',
      path => '/etc/httpd',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/httpd/conf':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/httpd/conf',
      owner => 'root',
      path => '/etc/httpd/conf',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/httpd/conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/httpd/conf.d',
      owner => 'root',
      path => '/etc/httpd/conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/httpd/logs':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/httpd/logs',
      owner => 'root',
      path => '/etc/httpd/logs',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/init':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/init',
      owner => 'root',
      path => '/etc/init',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/init.d':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/init.d',
      owner => 'root',
      path => '/etc/init.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ipa':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ipa',
      owner => 'root',
      path => '/etc/ipa',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/iproute2':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/iproute2',
      owner => 'root',
      path => '/etc/iproute2',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ipsec.d':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/ipsec.d',
      owner => 'root',
      path => '/etc/ipsec.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ipsec.d/policies':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/ipsec.d/policies',
      owner => 'root',
      path => '/etc/ipsec.d/policies',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/iscsi':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/iscsi',
      owner => 'root',
      path => '/etc/iscsi',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/java':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/java',
      owner => 'root',
      path => '/etc/java',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/java/security':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/java/security',
      owner => 'root',
      path => '/etc/java/security',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/java/security/security.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/java/security/security.d',
      owner => 'root',
      path => '/etc/java/security/security.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kde':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kde',
      owner => 'root',
      path => '/etc/kde',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kde/env':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kde/env',
      owner => 'root',
      path => '/etc/kde/env',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kde/kdm':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kde/kdm',
      owner => 'root',
      path => '/etc/kde/kdm',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kde/shutdown':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kde/shutdown',
      owner => 'root',
      path => '/etc/kde/shutdown',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kdump-adv-conf':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kdump-adv-conf',
      owner => 'root',
      path => '/etc/kdump-adv-conf',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kdump-adv-conf/kdump_initscripts':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kdump-adv-conf/kdump_initscripts',
      owner => 'root',
      path => '/etc/kdump-adv-conf/kdump_initscripts',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/kdump-adv-conf/kdump_sample_manifests':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/kdump-adv-conf/kdump_sample_manifests',
      owner => 'root',
      path => '/etc/kdump-adv-conf/kdump_sample_manifests',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/latrace.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/latrace.d',
      owner => 'root',
      path => '/etc/latrace.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/latrace.d/sysdeps':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/latrace.d/sysdeps',
      owner => 'root',
      path => '/etc/latrace.d/sysdeps',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/latrace.d/sysdeps/x86_64':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/latrace.d/sysdeps/x86_64',
      owner => 'root',
      path => '/etc/latrace.d/sysdeps/x86_64',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ld.so.conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ld.so.conf.d',
      owner => 'root',
      path => '/etc/ld.so.conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/libreport':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/libreport',
      owner => 'root',
      path => '/etc/libreport',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/libreport/events':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/libreport/events',
      owner => 'root',
      path => '/etc/libreport/events',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/libreport/events.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/libreport/events.d',
      owner => 'root',
      path => '/etc/libreport/events.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/libreport/plugins':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/libreport/plugins',
      owner => 'root',
      path => '/etc/libreport/plugins',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/logrotate.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/logrotate.d',
      owner => 'root',
      path => '/etc/logrotate.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/lsb-release.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/lsb-release.d',
      owner => 'root',
      path => '/etc/lsb-release.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/lvm':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/lvm',
      owner => 'root',
      path => '/etc/lvm',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/lvm/archive':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/lvm/archive',
      owner => 'root',
      path => '/etc/lvm/archive',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/lvm/backup':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/lvm/backup',
      owner => 'root',
      path => '/etc/lvm/backup',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/lvm/cache':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/lvm/cache',
      owner => 'root',
      path => '/etc/lvm/cache',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/makedev.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/makedev.d',
      owner => 'root',
      path => '/etc/makedev.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/maven':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/maven',
      owner => 'root',
      path => '/etc/maven',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/maven/fragments':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/maven/fragments',
      owner => 'root',
      path => '/etc/maven/fragments',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/modprobe.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/modprobe.d',
      owner => 'root',
      path => '/etc/modprobe.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ntp':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ntp',
      owner => 'root',
      path => '/etc/ntp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ntp/crypto':
      ensure => directory,
      group => 'ntp',
      mode => '0750',
      name => '/etc/ntp/crypto',
      owner => 'root',
      path => '/etc/ntp/crypto',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['ntp'], Class['hosts'], user['root']];
    '-/etc/obex-data-server':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/obex-data-server',
      owner => 'root',
      path => '/etc/obex-data-server',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/oddjobd.conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/oddjobd.conf.d',
      owner => 'root',
      path => '/etc/oddjobd.conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/openldap':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/openldap',
      owner => 'root',
      path => '/etc/openldap',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/openldap/certs':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/openldap/certs',
      owner => 'root',
      path => '/etc/openldap/certs',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pam.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pam.d',
      owner => 'root',
      path => '/etc/pam.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pango':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pango',
      owner => 'root',
      path => '/etc/pango',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pango/x86_64-redhat-linux-gnu':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pango/x86_64-redhat-linux-gnu',
      owner => 'root',
      path => '/etc/pango/x86_64-redhat-linux-gnu',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pcmcia':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pcmcia',
      owner => 'root',
      path => '/etc/pcmcia',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/php.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/php.d',
      owner => 'root',
      path => '/etc/php.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki',
      owner => 'root',
      path => '/etc/pki',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/ca-trust':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/ca-trust',
      owner => 'root',
      path => '/etc/pki/ca-trust',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/ca-trust/extracted':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/ca-trust/extracted',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/ca-trust/extracted/java':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/ca-trust/extracted/java',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/java',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/ca-trust/extracted/openssl':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/ca-trust/extracted/openssl',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/openssl',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/ca-trust/extracted/pem':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/ca-trust/extracted/pem',
      owner => 'root',
      path => '/etc/pki/ca-trust/extracted/pem',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/ca-trust/source':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/ca-trust/source',
      owner => 'root',
      path => '/etc/pki/ca-trust/source',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/nssdb':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/nssdb',
      owner => 'root',
      path => '/etc/pki/nssdb',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/rpm-gpg':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/rpm-gpg',
      owner => 'root',
      path => '/etc/pki/rpm-gpg',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/tls':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/tls',
      owner => 'root',
      path => '/etc/pki/tls',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/tls/certs':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/tls/certs',
      owner => 'root',
      path => '/etc/pki/tls/certs',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pki/tls/misc':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pki/tls/misc',
      owner => 'root',
      path => '/etc/pki/tls/misc',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/plymouth':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/plymouth',
      owner => 'root',
      path => '/etc/plymouth',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/polkit-1':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/polkit-1',
      owner => 'root',
      path => '/etc/polkit-1',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/polkit-1/localauthority.conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/polkit-1/localauthority.conf.d',
      owner => 'root',
      path => '/etc/polkit-1/localauthority.conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/polkit-1/nullbackend.conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/polkit-1/nullbackend.conf.d',
      owner => 'root',
      path => '/etc/polkit-1/nullbackend.conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/portreserve':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/portreserve',
      owner => 'root',
      path => '/etc/portreserve',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/postfix':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/postfix',
      owner => 'root',
      path => '/etc/postfix',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ppp':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ppp',
      owner => 'root',
      path => '/etc/ppp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/prelink.conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/prelink.conf.d',
      owner => 'root',
      path => '/etc/prelink.conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/profile.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/profile.d',
      owner => 'root',
      path => '/etc/profile.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/pulse':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/pulse',
      owner => 'root',
      path => '/etc/pulse',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/puppet':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/puppet',
      owner => 'root',
      path => '/etc/puppet',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/purple':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/purple',
      owner => 'root',
      path => '/etc/purple',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/rc.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/rc.d',
      owner => 'root',
      path => '/etc/rc.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/rc.d/init.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/rc.d/init.d',
      owner => 'root',
      path => '/etc/rc.d/init.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/reader.conf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/reader.conf.d',
      owner => 'root',
      path => '/etc/reader.conf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/redhat-lsb':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/redhat-lsb',
      owner => 'root',
      path => '/etc/redhat-lsb',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/request-key.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/request-key.d',
      owner => 'root',
      path => '/etc/request-key.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/rpm':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/rpm',
      owner => 'root',
      path => '/etc/rpm',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/rwtab.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/rwtab.d',
      owner => 'root',
      path => '/etc/rwtab.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/samba':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/samba',
      owner => 'root',
      path => '/etc/samba',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sane.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sane.d',
      owner => 'root',
      path => '/etc/sane.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sane.d/dll.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sane.d/dll.d',
      owner => 'root',
      path => '/etc/sane.d/dll.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sasl2':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sasl2',
      owner => 'root',
      path => '/etc/sasl2',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/security':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/security',
      owner => 'root',
      path => '/etc/security',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/security/console.apps':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/security/console.apps',
      owner => 'root',
      path => '/etc/security/console.apps',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/security/limits.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/security/limits.d',
      owner => 'root',
      path => '/etc/security/limits.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/selinux',
      owner => 'root',
      path => '/etc/selinux',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/selinux/targeted',
      owner => 'root',
      path => '/etc/selinux/targeted',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted/contexts':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/selinux/targeted/contexts',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted/contexts/files':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/selinux/targeted/contexts/files',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/files',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted/contexts/users':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/selinux/targeted/contexts/users',
      owner => 'root',
      path => '/etc/selinux/targeted/contexts/users',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted/modules':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/selinux/targeted/modules',
      owner => 'root',
      path => '/etc/selinux/targeted/modules',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted/modules/active':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/selinux/targeted/modules/active',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/active',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/selinux/targeted/modules/tmp':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/selinux/targeted/modules/tmp',
      owner => 'root',
      path => '/etc/selinux/targeted/modules/tmp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/setuptool.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/setuptool.d',
      owner => 'root',
      path => '/etc/setuptool.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sgml':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sgml',
      owner => 'root',
      path => '/etc/sgml',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sgml/docbook':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sgml/docbook',
      owner => 'root',
      path => '/etc/sgml/docbook',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/skel':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/skel',
      owner => 'root',
      path => '/etc/skel',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/snmp':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/snmp',
      owner => 'root',
      path => '/etc/snmp',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sound':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sound',
      owner => 'root',
      path => '/etc/sound',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sound/events':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sound/events',
      owner => 'root',
      path => '/etc/sound/events',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ssh':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ssh',
      owner => 'root',
      path => '/etc/ssh',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ssl':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/ssl',
      owner => 'root',
      path => '/etc/ssl',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/ssl/certs':
      ensure => directory,
      group => 'root',
      mode => '0777',
      name => '/etc/ssl/certs',
      owner => 'root',
      path => '/etc/ssl/certs',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sssd':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/etc/sssd',
      owner => 'root',
      path => '/etc/sssd',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sysconfig':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sysconfig',
      owner => 'root',
      path => '/etc/sysconfig',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sysconfig/cbq':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sysconfig/cbq',
      owner => 'root',
      path => '/etc/sysconfig/cbq',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sysconfig/modules':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sysconfig/modules',
      owner => 'root',
      path => '/etc/sysconfig/modules',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/sysconfig/network-scripts':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/sysconfig/network-scripts',
      owner => 'root',
      path => '/etc/sysconfig/network-scripts',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/udev':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/udev',
      owner => 'root',
      path => '/etc/udev',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/udev/rules.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/udev/rules.d',
      owner => 'root',
      path => '/etc/udev/rules.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/wpa_supplicant':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/wpa_supplicant',
      owner => 'root',
      path => '/etc/wpa_supplicant',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xdg':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xdg',
      owner => 'root',
      path => '/etc/xdg',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xdg/autostart':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xdg/autostart',
      owner => 'root',
      path => '/etc/xdg/autostart',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xdg/menus':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xdg/menus',
      owner => 'root',
      path => '/etc/xdg/menus',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xdg/menus/applications-merged':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xdg/menus/applications-merged',
      owner => 'root',
      path => '/etc/xdg/menus/applications-merged',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xdg/menus/preferences-post-merged':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xdg/menus/preferences-post-merged',
      owner => 'root',
      path => '/etc/xdg/menus/preferences-post-merged',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xen':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xen',
      owner => 'root',
      path => '/etc/xen',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xen/scripts':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xen/scripts',
      owner => 'root',
      path => '/etc/xen/scripts',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xinetd.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xinetd.d',
      owner => 'root',
      path => '/etc/xinetd.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/xml':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/xml',
      owner => 'root',
      path => '/etc/xml',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/yum':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/yum',
      owner => 'root',
      path => '/etc/yum',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/yum.repos.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/yum.repos.d',
      owner => 'root',
      path => '/etc/yum.repos.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/etc/yum/pluginconf.d':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/etc/yum/pluginconf.d',
      owner => 'root',
      path => '/etc/yum/pluginconf.d',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/home':
      ensure => directory,
      group => 'root',
      mode => '0755',
      name => '/home',
      owner => 'root',
      path => '/home',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/home/viktor':
      ensure => directory,
      group => 'viktor',
      mode => '0700',
      name => '/home/viktor',
      owner => 'viktor',
      path => '/home/viktor',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['viktor'], Class['hosts'], user['viktor']];
    '-/root':
      ensure => directory,
      group => 'root',
      mode => '0550',
      name => '/root',
      owner => 'root',
      path => '/root',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
    '-/root/.ssh':
      ensure => directory,
      group => 'root',
      mode => '0700',
      name => '/root/.ssh',
      owner => 'root',
      path => '/root/.ssh',
      require => [mount['/dev/mapper/vg_centos6-lv_root'], group['root'], Class['hosts'], user['root']];
  }
}
include dirs
