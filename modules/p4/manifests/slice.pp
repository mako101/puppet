$b = ['a', 'b', 'c', 1, 2, 3 ]

     # $b.slice(3) |$x, $y, $z| {
     # 	notify { "\n x equals ${x} \n y equals ${y} \n z equals ${z}"	: }
     # }

# slice(12, 3) |$x, $y, $z| {
#      	notify { "\n x equals ${x} \n y equals ${y} \n z equals ${z}"	: }
#      } 


$b.slice(3) |$x, $y, $z| { 
	notify {"\n
	[ Section ${x} ]\n
	${y}  =  ${z}\n": }
}

