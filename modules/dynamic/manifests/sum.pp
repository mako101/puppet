class dynamic::sum {
  file {'/tmp/cron1':
    ensure  => present,
    content => inline_template('<%= @hostname.sum % 100 %>')
  }
  
  file {'/tmp/cron2':
    ensure  => present,
    content => inline_template('<%= ( @hostname.sum + 2 ) % 100 %>')
  }
}