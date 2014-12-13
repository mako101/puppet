import 'nodes.pp'

Exec {
  path => ['/usr/local/bin',  '/bin' , '/usr/bin' ,  '/usr/local/sbin' ,  '/usr/sbin /sbin'],
}

Service {
  ensure     => running,
  enable     => true,
  hasstatus  => true,
  hasrestart => true
}

File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}