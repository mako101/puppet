class random::hashes {
  
  $interfaces = {
    'eth0' => {
      'address' => $::ipaddress,
      'netmask' => $::netmask,
     },
    'lo'  => {
      'address' => $::ipaddress_lo,
      'netmask' => $::netmask_lo,
    }
  }
  notify { "The network interface has the IP address of ${interfaces['eth0']['address']} and the netmask of ${interfaces['eth0']['netmask']} ": }
    
  notify { "The loopback interface stats are ${interfaces['lo']} ": }

}

