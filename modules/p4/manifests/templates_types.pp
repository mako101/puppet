file {'/home/viktor/test':
  ensure => directory,
}


# Concat multiple templates !
file {'/home/viktor/test/concat-test':
  ensure => file,
  content => template('p4/3.erb', 'p4/2.erb', 'p4/1.erb')
}

# Working 
# file {'/home/viktor/test/epp-test':
#   ensure  => file,
#   content => epp('p4/test.epp', {
#   	keys_enable => true,
#   	keys_file   => '/tmp/keys',
#   	keys_trusted => ['srerew', 'safsafsadf', 'adfafsadf'],
#   	keys_hash => { 
#   		'1' => 'auhduahsd',
#   		'2' => 'eidsdtged'
#   	}
#   })
# }


# BREAKINg BAD 
file {'/home/viktor/test/epp-test':
  ensure  => file,
  content => epp('p4/test.epp', {
  	keys_enable => true,
  	keys_file   => '/tmp/keys',
  	keys_trusted => 'dpgdjfg',
  	keys_hash => { 
  		'1' => 'auhduahsd',
  		'2' => 'eidsdtged'
  	}
  })
}