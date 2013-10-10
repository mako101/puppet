class random {
  
  include random::arrays, random::exec, random::hashes, random::if
  
  file { ['/tmp/dir1',
          '/tmp/dir2',
          '/tmp/dir3']:
    ensure => directory,
  }
  
  if 'eggs' in 'do you know the price of eggs' {
    notify { 'string found': }
  }
  else { 
    notify { 'string not found': }
  }
  
  $math = (10+2) / 6 + 8
  notify { "Math - the answer is $math, should equal 10": } 
    
  $bit = 3 << 3  
  notify { "Bitwise shift - the answer is $bit, should be 24": }
 
  $word = 'house'
  if $word =~ /h.*/ {
    notify { "The word is $word": }
  }
  else { notify {'No match :(' : } 
  }
  
  $word1 = 'booo31'
  if $word1 =~ /app\d*/ {
    notify { "The word is $word1": }
  }
  else { notify {'No match :(' : } 
  }
  
  $test = 'This is a phrase'
  if $test =~ /(\This)\ (\is)/ {
    notify { "The first two words are \"$0\" \n First is ${1}, second is \"$2\" ": }
  }
  
#  Substitution test
#
#  $sub = regsubst('This is an old phrase', 'old', 'new')
#  notify { $sub: }
  
#  $sub = regsubst('This is my old phrase', ' .* old', ' your new')
#  notify { $sub: }
  
  $sub = regsubst('This is my old phrase', '(my) .* (phrase)', 'an awesome \2, oh \1!')
  notify { $sub: }
  
  file {'/tmp/puppet.lastrun':
    content => inline_template('<%= Time.now %>'),
    backup  => false,
  }
  
  
  file {'/tmp/var': 
    ensure => link,
    target => '/var',
  }

}

