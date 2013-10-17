import 'nodes.pp'

Exec {
  path => ['/usr/local/bin',  '/bin' , '/usr/bin' ,  '/usr/local/sbin' ,  '/usr/sbin /sbin'],
} 
