require 'spec_helper'

describe 'nginx::service', :type => :class do
  it { should contain_service('nginx').with(
    'ensure'     => 'running',
    'enable'     => 'true',
    'hasstatus'  => 'true',
    'hasrestart' => 'true'
    )
  }
end