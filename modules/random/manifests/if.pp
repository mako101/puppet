class random::if {

# Testing the if statements 
  
  if $::memorysize_mb >= 8000 {
    notify { 'This machine has a lot of RAM': }
  }
    elsif $::memorysize_mb >= 4000 {
    notify { 'This machine has moderate amount of RAM': }
  }
    else {
    notify { 'This machine has little RAM': }
  }

  if $::processorcount < 2 {
    notify { 'This is a single-core machine': }
  }
    else {
    notify { 'This is a multi-core machine': }
  }
  
  unless $::kernel == 'Windows' {
    notify { 'This machine runs a Linux kernel': }
  }
  
# Testing the case statements  
  
  case $::operatingsystem {
    'CentOS', 'RedHat', 'Scientific': {
      notify { 'This is a Red Hat derivative': }
    }
    'Debian', 'Ubuntu': {
      notify { 'This is a Debian derivative': }
    }
    default: { fail('Puppet cannot recognise the installed OS')
    }
  }
    
#  $arch = $::architecture ? {
#    'i386'   => '32-bit',
#    'x86_64' => '64-bit',
#    default  => 'UNKNOWN',
#  }
#  notify { "This machine has ${arch} architecture": } 
  
  
  $proc  = $::processorcount
  if ($proc > 6 and $proc < 10) and $::operatingsystem == 'CentOS' {
    notify { 'BOOLEAN AND - this machine has 8 cores and runs Centos': }
  }
    else { notify {' BOOLEAN AND - does not compute ...': }
    }

  if $::interfaces =~ /.*virbr.*/ {
    notify { 'This machine is a physical VM host': }
  }
    else { notify { 'This is a Virtual Machine': }
      
  }
  
  $uname = generate('/bin/uname', '-a')
  if $uname =~ /(\d)\.(\d+)(\.\d+)/ {
    notify { "I have kernel version ${0} \n Major version ${1}, minor version ${2}, patch \"${3}\"": }
  }
  
  if $::processor0 =~ /AMD (.*-\d+)/ {
    notify { "Your AMD processor model is ${1}": }
  }
  
  if $::processor1 =~ /\D{3,6}-Core/ {
  $pcount = regsubst($0, '\[A-Z]', '\[a-z]')
 notify { "This processor has ${pcount} structure": }
#   notify { "The captured text is ${0}": }
  }
}
  