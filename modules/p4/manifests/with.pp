

$names = ['alpha', 'beta', 'gamma/foo/', 'gamma/foo/ray']

$names.each |$filename| {
  with('0777', 'bob', 'directory', ) | $mode, $group, $ensure | {
  	file {"/home/viktor/${filename}":
  	  ensure => $ensure,
  	  mode   => $mode,
  	  group  => $group,
      }
  }
}