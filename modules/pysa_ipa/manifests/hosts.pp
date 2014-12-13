class hosts {
  host {
    'foobar':
      host_aliases => 'beta',
      ip => '192.168.122.5',
      name => 'foobar',
      target => '/etc/hosts';
    'gamma.example.net':
      host_aliases => 'gamma',
      ip => '192.168.122.30',
      name => 'gamma.example.net',
      target => '/etc/hosts';
    'ipa':
      host_aliases => 'ipa.example.net',
      ip => '192.168.1.50',
      name => 'ipa',
      target => '/etc/hosts';
    'ipa.example.net':
      host_aliases => 'ipa',
      ip => '192.168.122.10',
      name => 'ipa.example.net',
      target => '/etc/hosts';
    'localhost.localdomain':
      host_aliases => 'localhost',
      ip => '127.0.0.1',
      name => 'localhost.localdomain',
      target => '/etc/hosts';
    'localhost6.localdomain6':
      host_aliases => 'localhost6',
      ip => '::1',
      name => 'localhost6.localdomain6',
      target => '/etc/hosts';
  }
}
include hosts
