# Manage a specific VIP with Heartbeat

class heartbeat::vip ($node1, $node2, $ip1, $ip2, $vip, $int = 'eth0:1'){
  include heartbeat
  
  file {'/etc/ha.d/haresources':
    content => "${node1} Ipaddr::${vip}/${int}\n",
    require => Package['heartbeat'],
    notify  => Exec['reload_heartbeat'],
  }
  
  file {'/etc/had.d/ha.cf':
    content => template('heartbeat/etc/ha.d/vip.ha.cf.erb'),
    require => Package['heartbeat'],
    notify  => Exec['reload_heartbeat'],
  }
  
}