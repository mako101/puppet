
include p4
# require stdlib

class p4 {
	
	$a = {
      home   => 'base',
      number => 'one',
      tick   => 'tock'
	}
   
   $config = @(END) 
     This is a test template
     <%= @key %> = <%= @value %>
   END


   file {'/home/viktor/testdir':
     ensure => directory,
   }

   $a.each |$key, $value| {

    file { "/home/viktor/testdir/${key}":
      ensure => present,
      content => inline_template($config),
      require => File['/home/viktor/testdir'],
    }

     # notify { "The key is ${key}, the value is ${value} \n\n": } 
   }


     


}