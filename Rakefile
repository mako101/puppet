SSH = 'ssh -l git'

desc "Run Puppet on ENV['CLIENT']"

task :apply do
  client = ENV['CLIENT']
#  sh "git pull origin production"
#  sh "git push origin production"
  sh "#{SSH} #{client} pull-updates"
end
