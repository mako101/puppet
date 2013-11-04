class httperf {
  exec {'install-httperf':
    cwd => '/',
    command => 'wget http://httperf.googlecode.com/files/httperf-0.9.0.tar.gz && tar zxfv httperf-0.9.0.tar.gz 
&& cd httperf-0.9.0 && ./configure && make all && make install && cd /root && rm -rf /httperf-0.9.0',
    creates => '/usr/local/bin/httperf',
    timeout => 0,
  }
}