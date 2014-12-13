class mounts {
  mount {
    '/dev/mapper/vg_centos6-lv_root':
      device => '/dev/mapper/vg_centos6-lv_root',
      fstype => 'ext4',
      name => '/',
      require => Class['hosts'];
    '/dev/sda1':
      device => '/dev/sda1',
      fstype => 'ext4',
      name => '/boot',
      require => Class['hosts'];
    '/dev/sr0':
      device => '/dev/sr0',
      fstype => 'iso9660',
      name => '/media/VBOXADDITIONS_4.3.6_91406',
      require => Class['hosts'];
  }
}
include mounts
