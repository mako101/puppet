import 'nodes.pp'
import 'node_defs.pp'

Exec {
  path => ['/usr/local/bin',  '/bin' , '/usr/bin' ,  '/usr/local/sbin' ,  '/usr/sbin /sbin'],
} 
