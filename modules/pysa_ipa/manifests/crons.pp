class crons {
  cron {
    'rsync':
      command => '/usr/bin/rsync -avz /var/www/catpics/ /backup/catpics/',
      environment => 'PATH=/bin:/usr/bin:/usr/sbin:/usr/bin',
      hour => '3',
      minute => '0',
      month => '*',
      monthday => '*',
      name => 'rsync',
      require => Class['hosts'],
      weekday => '*';
  }
}
include crons
