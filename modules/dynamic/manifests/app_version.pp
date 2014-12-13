class dynamic::app_version {
  
  $version = generate('/usr/bin/vim', '--version')

   if $version =~ /(\d.\d)/ {
     notify {"My version of VIM is ${0}": }
   }
   
   if versioncmp($::puppetversion, '3.3.10') >=0 {
     notify {'Puppet is up to date':}
   }
   else { notify {'Puppet version is too old!': } }
   
}
