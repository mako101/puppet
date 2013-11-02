class dynamic::templates {
  
  $dudes = ['Bob', 'Sam', 'Jon', 'Sue']
  
  file {'/tmp/developers':
    ensure  => present,
    content => template('dynamic/developers.erb'),
  }
  
  $friends = [
    {name => 'John',   city => 'London'},
    {name => 'Lou',    city => 'Paris'},
    {name => 'Shinji', city => 'Tokyo'}
  ]

  file {'/tmp/friends':
    ensure  => present,
    content => template('dynamic/friends.erb'),
    }
  
}