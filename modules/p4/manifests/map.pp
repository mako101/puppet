

$a = {
      home   => 'base',
      number => 'one',
      tick   => 'tock'
	}



# $a.map | $x | { 
# 	notify {"\n key is ${x[0]}": }
# }

# $a.map | $x | { 
# 	notify {"\n value is ${x[1]}": }
# }


$foo = $a.map |$x| { $x[0] }

$bar = $a.map |$x| { $x[1] }


notify { "\nfoo is ${foo}\n": }

notify { "\nbar is ${bar}\n": }
