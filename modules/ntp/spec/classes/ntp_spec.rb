require 'spec_helper'

describe 'ntp' do 

  it { should contain_package('ntp') }
  it { should contain_service('ntpd').with('ensure' => 'running') }
  it { should contain_file('/etc/ntp.conf') }

end 
