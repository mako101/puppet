SSH = 'ssh -l git'
REPO ='git@ssh.github.com/mako101/puppet.git'


desc "Run Puppet on ENV['CLIENT']"

task :apply do
  client = ENV['CLIENT']
  sh "git pull origin master"
  sh "git push origin master"
  sh "#{SSH} #{client} pull-updates"
end

#desc "Bootstrap Puppet on ENV['CLIENT'] with hostname ENV['HOSTNAME'] - 
#make sure "requiretty" is commented out in /etc/sudoers"

#task :bootstrap do
#  client = ENV['CLIENT']
#  hostname = ENV['HOSTNAME'] || client
#  commands = <<BOOTSTRAP
#wget://http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm && sudo yum  install puppetlabs-release-el-6.noarch.rpm && yum install git


desc "Add syntax check to your git repo"
task :add_check do
  here = File.dirname(__FILE__)
  sh "ln -s #{here}/hooks/check_syntax.sh  #{here}/.git/hooks/pre-commit"
  puts "Puppet syntax check hook added"
end
