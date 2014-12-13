class random::schedule {
  schedule { 'every_5_mins':
    period  => 'hourly',
    weekday => ['Mon', 'Wed', 'Fri'],
    range   => '10:00-23:00',
    repeat  => 2,
  }
  
  exec {'Here we go again...':
    command  => 'echo \"Here we go again\"',
    schedule => 'every_5_mins',
  }
}