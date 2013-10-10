class random::arrays {
  
  $developers = [ 'Tom', 'Jerry', 'Ben' ]
#  notify { $developers: } 
#  notify { "The devs are $developers": }
  notify { "The first dev is ${developers[0]}\n The second dev is ${developers[-2]} \n The last dev is ${developers[-1]}" : }
 
  $crew = 'Dave'
  if $crew in ['Dave', 'Frank', 'Sam'] {
    notify { "I am sorry $crew, I can't let you do that": }
  }
  
#  define list_lunch() {
#    notify { "Lunch included ${name}": }
#  }
#     
#  $lunch = ['meal', 'drink', 'desert']
#  list_lunch { $lunch: }
#  
  define list_vms(){
    notify {"${name} is a Virtual Machine": }
  }
  
# First set  
#  $vms = 'ipa alpha beta'
#  $items = split($vms, ' ')

# Second set
$vms = 'ipa:alpha,beta gamma'
$items = split($vms, ' |,|:')
  
list_vms {$items: }   
 
 
 
}