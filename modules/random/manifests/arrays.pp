class random::arrays {
  
  $developers = [ 'Tom', 'Jerry', 'Ben' ]
#  notify { $developers: } 
#  notify { "The devs are $developers": }
  notify { "The first dev is ${developers[0]}\n The second dev is ${developers[-2]} \n The last dev is ${developers[-1]}" : }
 
  $crew = 'Dave'
  if $crew in ['Dave', 'Frank', 'Sam'] {
    notify { "I am sorry $crew, I can't let you do that": }
  }
  
 
 
 
 
 
 
 
  
}