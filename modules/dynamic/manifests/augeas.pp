class dynamic::augeas {
  augeas {'Adding a custom host entry':
    context => '/files/etc/hosts',
    changes => [
      'ins 03 after 2/',
      'set 03/ipaddr 10.20.30.40',
      'set 03/canonical foobar',
      'set 03/alias foobar.com',
  ],
  }
  
  
  augeas {'Adding a custom host entry - 2 ':
    context => '/files/etc/hosts',
    changes => [
      'set 5/ipaddr 192.168.122.5',
      'set 5/canonical foobar',
    ],
  }
}