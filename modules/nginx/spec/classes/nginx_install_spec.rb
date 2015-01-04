require 'spec_helper'

describe 'nginx::install', :type => :class do
  it { should contain_package('httpd').with_ensure('absent') }
  it { should contain_package('nginx').with_ensure('latest').that_requires('File[/etc/yum.repos.d/nginx.repo]') }
  it { should have_file_resource_count(2) }
end