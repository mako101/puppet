class stages {
  stage { 'first': before => Stage['main'] }
  stage { 'last': require => Stage['main'] }
  
  class first { notify {'I am number one': }  }
  class middle { notify {'I like to fiddle in the middle :3': }  }
  class last { notify {'Bitchez luvz it when I come last >:)': }  }
  
  class {'first': stage => 'first' }
  class {'middle': stage => 'main' }
  class {'last': stage => 'last' }
    
}